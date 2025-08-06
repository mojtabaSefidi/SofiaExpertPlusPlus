using Microsoft.Extensions.Logging;
using RelationalGit.Recommendation;
using RelationalGit.Simulation;
using System;

namespace RelationalGit.KnowledgeShareStrategies
{
    public static class KnowledgeShareStrategyFactory
    {
        public static RecommendationStrategy Create(ILogger logger, string recommendationStrategy, string knowledgeSaveReviewerReplacementType, int? numberOfPeriodsForCalculatingProbabilityOfStay, string pullRequestReviewerSelectionStrategy, bool? addOnlyToUnsafePullrequests, string recommenderOption, bool changePast, string simulationType)
        {
            if (recommendationStrategy == KnowledgeShareStrategyType.NoReviewer)
            {
                return new NoReviewerRecommendationStrategy(knowledgeSaveReviewerReplacementType, logger, changePast, simulationType);
            }
            else if (recommendationStrategy == KnowledgeShareStrategyType.Reality)
            {
                return new RealityRecommendationStrategy(knowledgeSaveReviewerReplacementType, logger, changePast, simulationType);
            }
            else if (recommendationStrategy == KnowledgeShareStrategyType.AuthorshipRec)
            {
                return new AuthorshipRecRecommendationStrategy(knowledgeSaveReviewerReplacementType, logger, pullRequestReviewerSelectionStrategy, addOnlyToUnsafePullrequests, recommenderOption, changePast, simulationType);
            }
            else if (recommendationStrategy == KnowledgeShareStrategyType.LineRec)
            {
                return new LineRecRecommendationStrategy(knowledgeSaveReviewerReplacementType, logger, pullRequestReviewerSelectionStrategy, addOnlyToUnsafePullrequests, recommenderOption, changePast, simulationType);
            }
            else if (recommendationStrategy == KnowledgeShareStrategyType.CHRev)
            {
                return new CHRevRecommendationStrategy(knowledgeSaveReviewerReplacementType, logger, pullRequestReviewerSelectionStrategy, addOnlyToUnsafePullrequests, recommenderOption, changePast, simulationType);
            }
            else if (recommendationStrategy == KnowledgeShareStrategyType.AuthorshipCHRev)
            {
                return new AuthorshipCHRevRecommendationStrategy(knowledgeSaveReviewerReplacementType, logger, pullRequestReviewerSelectionStrategy, addOnlyToUnsafePullrequests, recommenderOption, changePast, simulationType);
            }
            else if (recommendationStrategy == KnowledgeShareStrategyType.RevOwnRec)
            {
                return new RevOwnRecRecommendationStrategy(knowledgeSaveReviewerReplacementType, logger, pullRequestReviewerSelectionStrategy, addOnlyToUnsafePullrequests, recommenderOption, changePast, simulationType);
            }
            else if (recommendationStrategy == KnowledgeShareStrategyType.LearnRec)
            {
                return new LearnRecRecommendationStrategy(knowledgeSaveReviewerReplacementType, logger, pullRequestReviewerSelectionStrategy, addOnlyToUnsafePullrequests, recommenderOption, changePast, simulationType);
            }
            else if (recommendationStrategy == KnowledgeShareStrategyType.RetentionRec)
            {
                return new RetentionRecRecommendationStrategy(knowledgeSaveReviewerReplacementType, logger, numberOfPeriodsForCalculatingProbabilityOfStay, pullRequestReviewerSelectionStrategy, addOnlyToUnsafePullrequests, recommenderOption, changePast, simulationType);
            }
            else if (recommendationStrategy == KnowledgeShareStrategyType.TurnoverRec)
            {
                return new TurnoverRecRecommendationStrategy(knowledgeSaveReviewerReplacementType, logger, numberOfPeriodsForCalculatingProbabilityOfStay, pullRequestReviewerSelectionStrategy, addOnlyToUnsafePullrequests, recommenderOption, changePast, simulationType);
            }
            else if (recommendationStrategy == KnowledgeShareStrategyType.RandomRec)
            {
                return new RandomRecRecommendationStrategy(knowledgeSaveReviewerReplacementType, logger, pullRequestReviewerSelectionStrategy, addOnlyToUnsafePullrequests, recommenderOption, changePast, simulationType);
            }
            else if (recommendationStrategy == KnowledgeShareStrategyType.Sofia)
            {
                return new SofiaRecommendationStrategy(knowledgeSaveReviewerReplacementType, logger, numberOfPeriodsForCalculatingProbabilityOfStay, pullRequestReviewerSelectionStrategy, addOnlyToUnsafePullrequests, recommenderOption, changePast, simulationType);
            }
            else if (recommendationStrategy == KnowledgeShareStrategyType.ContributionRec)
            {
                return new ContributionRecRecommendationStrategy(knowledgeSaveReviewerReplacementType, logger, pullRequestReviewerSelectionStrategy, addOnlyToUnsafePullrequests, recommenderOption, changePast, simulationType);
            }

            else if (recommendationStrategy == KnowledgeShareStrategyType.RAR)
            {
                return new RARRecommendationStrategy(knowledgeSaveReviewerReplacementType, logger, numberOfPeriodsForCalculatingProbabilityOfStay, pullRequestReviewerSelectionStrategy, addOnlyToUnsafePullrequests, recommenderOption, changePast, simulationType);
            }
            
            else if (recommendationStrategy == KnowledgeShareStrategyType.RARSofiaWL)
            {
                return new RARSofiaWLRecommendationStrategy(knowledgeSaveReviewerReplacementType, logger, numberOfPeriodsForCalculatingProbabilityOfStay, pullRequestReviewerSelectionStrategy, addOnlyToUnsafePullrequests, recommenderOption, changePast, simulationType);
            }

            else if (recommendationStrategy == KnowledgeShareStrategyType.WhoDoRec)
            {
                return new WhoDoRecommendationStrategy(knowledgeSaveReviewerReplacementType, logger, numberOfPeriodsForCalculatingProbabilityOfStay, pullRequestReviewerSelectionStrategy, addOnlyToUnsafePullrequests, recommenderOption, changePast, simulationType);
            }

            else if (recommendationStrategy == KnowledgeShareStrategyType.SofiaWLRec)
            {
                return new SofiaWLRecommendationStrategy(knowledgeSaveReviewerReplacementType, logger, numberOfPeriodsForCalculatingProbabilityOfStay, pullRequestReviewerSelectionStrategy, addOnlyToUnsafePullrequests, recommenderOption, changePast, simulationType);
            }

            else if (recommendationStrategy == KnowledgeShareStrategyType.WhoDoWithCommit)
            {
                return new WhoDoWithCommitWorkShareStrategy(knowledgeSaveReviewerReplacementType, logger, numberOfPeriodsForCalculatingProbabilityOfStay, pullRequestReviewerSelectionStrategy, addOnlyToUnsafePullrequests, recommenderOption, changePast, simulationType);
            }

            else if (recommendationStrategy == KnowledgeShareStrategyType.OwnerShipKnowledgeShare)
            {
                return new OwnerShipKnowledgeShareStrategy(knowledgeSaveReviewerReplacementType, logger, pullRequestReviewerSelectionStrategy, addOnlyToUnsafePullrequests, recommenderOption, changePast, simulationType);
            }
                throw new ArgumentException($"invalid {nameof(recommendationStrategy)}");
            }
        }
    }
