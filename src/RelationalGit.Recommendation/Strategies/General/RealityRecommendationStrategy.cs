using Microsoft.Extensions.Logging;
using RelationalGit.Simulation;
using System;

namespace RelationalGit.Recommendation
{
    public class RealityRecommendationStrategy : RecommendationStrategy
    {
        public RealityRecommendationStrategy(string knowledgeSaveReviewerReplacementType, ILogger logger, bool changePast, string simulationType)
            : base(knowledgeSaveReviewerReplacementType, logger, changePast, simulationType)
        {
        }

        protected override Simulation.PullRequestRecommendationResult RecommendReviewers(PullRequestContext pullRequestContext)
        {
            return new Simulation.PullRequestRecommendationResult(
                pullRequestContext.ActualReviewers,
                Array.Empty<DeveloperKnowledge>(),
                null,
                null,
                pullRequestContext.ComputeDefectPronenessScore(),
                //pullRequestContext.ComputeMaxExpertise(pullRequestContext.ActualReviewers),
                //pullRequestContext.ComputeSumRevExpertise(pullRequestContext.ActualReviewers),
                //pullRequestContext.ComputeMaxRevAutExpertise(pullRequestContext.ActualReviewers),
                pullRequestContext.ComputeSumRevAutExpertise(pullRequestContext.ActualReviewers),
                pullRequestContext.PullRequest.Number,
                0,
                0);
        }
    }
}
