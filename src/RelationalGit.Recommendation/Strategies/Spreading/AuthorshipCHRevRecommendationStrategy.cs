using System;
using Microsoft.Extensions.Logging;
using RelationalGit.Simulation;
using System.Collections.Generic;

namespace RelationalGit.Recommendation
{
    public class AuthorshipCHRevRecommendationStrategy : ScoreBasedRecommendationStrategy
    {
        public AuthorshipCHRevRecommendationStrategy(string knowledgeSaveReviewerReplacementType, ILogger logger, string pullRequestReviewerSelectionStrategy, bool? addOnlyToUnsafePullrequests, string recommenderOption, bool changePast, string simulationType)
            : base(knowledgeSaveReviewerReplacementType, logger, pullRequestReviewerSelectionStrategy, addOnlyToUnsafePullrequests, recommenderOption, changePast, simulationType)
        {
        }

        internal override double ComputeReviewerScore(PullRequestContext pullRequestContext, DeveloperKnowledge reviewer)
        {
            double score = 0.0;
            int validFileCount = 0;

            foreach (var pullRequestFile in pullRequestContext.PullRequestFiles)
            {
                var canonicalPath = pullRequestContext.CanononicalPathMapper.GetValueOrDefault(pullRequestFile.FileName);
                if (canonicalPath == null)
                    continue;

                var fileExpertise = pullRequestContext.KnowledgeMap.PullRequestEffortKnowledgeMap.GetFileExpertise(canonicalPath);
                var reviewerExpertise = pullRequestContext.KnowledgeMap.PullRequestEffortKnowledgeMap.GetReviewerExpertise(canonicalPath, reviewer.DeveloperName);

                // PR effort recency score
                double scoreRecency = 0.0;
                if (fileExpertise.RecentWorkDay == null)
                    scoreRecency = 0.0;
                else if (fileExpertise.RecentWorkDay == reviewerExpertise.RecentWorkDay
                    && reviewerExpertise.RecentWorkDay != null)
                    scoreRecency = 1.0;
                else if (fileExpertise.RecentWorkDay != null && reviewerExpertise.RecentWorkDay != null)
                    scoreRecency = 1.0 / (Math.Abs((reviewerExpertise.RecentWorkDay - fileExpertise.RecentWorkDay)
                        .Value.TotalDays) + 1);

                // Commit-based metrics
                var prCreationTime = pullRequestContext.PullRequest.CreatedAtDateTime.GetValueOrDefault(DateTime.MinValue);
                var developerAuthorship = pullRequestContext.KnowledgeMap.CommitBasedKnowledgeMap.GetDeveloperAuthorship(canonicalPath, reviewer.DeveloperName, prCreationTime);

                double scoreCommitRecency = 0.0;
                if (developerAuthorship.fileRecentCommit == null)
                    scoreCommitRecency = 0.0;
                else if (developerAuthorship.developerRecentCommit == developerAuthorship.fileRecentCommit
                    && developerAuthorship.developerRecentCommit != null)
                    scoreCommitRecency = 1.0;
                else if (developerAuthorship.developerRecentCommit != null && developerAuthorship.fileRecentCommit != null)
                    scoreCommitRecency = 1.0 / (Math.Abs((developerAuthorship.developerRecentCommit - developerAuthorship.fileRecentCommit)
                        .Value.TotalDays) + 1);


                // Accumulate full Bird score (other components unchanged)
                double scoreComments = fileExpertise.TotalComments == 0
                                     ? 0.0
                                     : reviewerExpertise.TotalComments / (double)fileExpertise.TotalComments;
                double scoreWorkDays = fileExpertise.TotalWorkDays == 0
                                     ? 0.0
                                     : reviewerExpertise.TotalWorkDays / (double)fileExpertise.TotalWorkDays;
                double scoreCommits = developerAuthorship.fileTotalCommit == 0
                                    ? 0.0
                                    : developerAuthorship.developerTotalCommit / (double)developerAuthorship.fileTotalCommit;

                score += scoreComments + scoreWorkDays + scoreRecency + scoreCommits + scoreCommitRecency;
                validFileCount++;
            }

            return validFileCount > 0 ? score / (5 * validFileCount) : 0.0;
        }
    }
}