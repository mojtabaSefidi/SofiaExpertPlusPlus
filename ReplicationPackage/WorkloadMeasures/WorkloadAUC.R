source("relative/path/to/CumulativePercentageLib.r")


# Reality
OpenReviewsReality <- read.csv('relative/path/to/OpenReviewsRealityPerQuarter.csv', header = T)

# RQ1:Baseline
OpenReviewsAuthorshipRec <- read.csv('relative/path/to/OpenReviewsAuthorshipRecReplacePerQuarter.csv', header = T)
OpenReviewsRevOwnRec <- read.csv('relative/path/to/OpenReviewsRevOwnRecReplacePerQuarter.csv', header = T)
OpenReviewsCHRev <- read.csv('relative/path/to/OpenReviewsCHRevReplacePerQuarter.csv', header = T)
OpenReviewsLearnRec <- read.csv('relative/path/to/OpenReviewsLearnRecReplacePerQuarter.csv', header = T)
OpenReveiwsRetentionRec <- read.csv('relative/path/to/OpenReviewsRetentionRecReplacePerQuarter.csv', header = T)
OpenReviewsTurnoverRec <- read.csv('relative/path/to/OpenReviewsTurnoverRecReplacePerQuarter.csv', header = T)
OpenReviewsWhoDo <- read.csv('relative/path/to/OpenReviewsWhoDoReplacePerQuarter.csv', header = T)

# RQ2: Recommenders++
OpenReviewsAuthorshipRecPlus <- read.csv('relative/path/to/OpenReviewsAuthorRecPlusPerQuarter.csv', header = T)
OpenReviewsRevOwnRecPlus <- read.csv('relative/path/to/OpenReviewsRevOwnRecPlusPerQuarter.csv', header = T)
OpenReviewsCHRevPlus <- read.csv('relative/path/to/OpenReviewsChrevPlusPerQuarter.csv', header = T)
OpenReviewsLearnRecPlus <- read.csv('relative/path/to/OpenReviewsLearnRecPlusPerQuarter.csv', header = T)
OpenReveiwsRetentionRecPlus <- read.csv('relative/path/to/OpenReviewsRetentionRecPlusPerQuarter.csv', header = T)
OpenReviewsTurnoverRecPlus <- read.csv('relative/path/to/OpenReviewsTurnoverRecPlusPerQuarter.csv', header = T)
OpenReviewsWhoDoPlus <- read.csv('relative/path/to/OpenReviewsWhodoPlusPerQuarter.csv', header = T)

# RQ3: FarAwareRec
openFarAwareRec <- read.csv('relative/path/to/OpenReviewsFarAwareRecPerQuarter.csv', header = T)

# RQ4: HoardedXRec
OpenReviewsHoarded2Rec <- read.csv('relative/path/to/OpenReviewsHoarded2RecPerQuarter.csv', header = T)
OpenReviewsHoarded3Rec <- read.csv('relative/path/to/OpenReviewsHoarded3RecPerQuarter.csv', header = T)
OpenReviewsHoarded4Rec <- read.csv('relative/path/to/OpenReviewsHoarded4RecPerQuarter.csv', header = T)

cat("\n")
cat("\n")
print('-------- GiniWorkload of Development Team --------')
cat("\n")
cat("\n")

print(' -------- RQ1: Baseline --------')
cat("\n")

print('Authorship:')
auc_difference_percentage_all(OpenReviewsReality, OpenReviewsAuthorshipRec)
cat("\n")
print('RevOwnRec:')
auc_difference_percentage_all(OpenReviewsReality, OpenReviewsRevOwnRec)
cat("\n")
print('cHRev:')
auc_difference_percentage_all(OpenReviewsReality, OpenReviewsCHRev)
cat("\n")
print('LeanRec:')
auc_difference_percentage_all(OpenReviewsReality, OpenReviewsLearnRec)
cat("\n")
print('RetentionRec:')
auc_difference_percentage_all(OpenReviewsReality, OpenReveiwsRetentionRec)
cat("\n")
print('TurnoverRec:')
auc_difference_percentage_all(OpenReviewsReality, OpenReviewsTurnoverRec)
cat("\n")
print('WhoDo:')
auc_difference_percentage_all(OpenReviewsReality, OpenReviewsWhoDo)
cat("\n")

print(' -------- RQ2: Recommenders++ --------')
cat("\n")

print('Authorship++:')
auc_difference_percentage_all(OpenReviewsReality, OpenReviewsAuthorshipRecPlus)
cat("\n")
print('RevOwnRec++:')
auc_difference_percentage_all(OpenReviewsReality, OpenReviewsRevOwnRecPlus)
cat("\n")
print('cHRev++:')
auc_difference_percentage_all(OpenReviewsReality, OpenReviewsCHRevPlus)
cat("\n")
print('LeanRec++:')
auc_difference_percentage_all(OpenReviewsReality, OpenReviewsLearnRecPlus)
cat("\n")
print('RetentionRec++:')
auc_difference_percentage_all(OpenReviewsReality, OpenReveiwsRetentionRecPlus)
cat("\n")
print('TurnoverRec++:')
auc_difference_percentage_all(OpenReviewsReality, OpenReviewsTurnoverRecPlus)
cat("\n")
print('WhoDo++:')
auc_difference_percentage_all(OpenReviewsReality, OpenReviewsWhoDoPlus)
cat("\n")


print(' -------- RQ3: FarAwareRec --------')
cat("\n")
print('FarAwareRec:')
auc_difference_percentage_all(OpenReviewsReality, openFarAwareRec)
cat("\n")
print(' -------- RQ4: HoardedXRec --------')
cat("\n")
print('Hoarded2Rec...')
auc_difference_percentage_all(OpenReviewsReality, OpenReviewsHoarded2Rec)
cat("\n")
print('Hoarded3Rec...')
auc_difference_percentage_all(OpenReviewsReality, OpenReviewsHoarded3Rec)
cat("\n")
print('Hoarded4Rec...')
auc_difference_percentage_all(OpenReviewsReality, OpenReviewsHoarded4Rec)



cat("\n")
cat("\n")
p <- 20
print(sprintf(' -------------------------- %d%% of reviewers do what percentage of code reviews? -------------------------- ', p))
cat("\n")
cat("\n")


print(' -------- Reality --------')
cat("\n")
cumulative_at_p_all(OpenReviewsReality, p)
cat("\n")
print(' -------- RQ1: Baseline --------')
cat("\n")
print('Authorship:')
cumulative_at_p_all(OpenReviewsAuthorshipRec, p)
cat("\n")
print('RevOwnRec:')
cumulative_at_p_all(OpenReviewsRevOwnRec, p)
cat("\n")
print('cHRev:')
cumulative_at_p_all(OpenReviewsCHRev, p)
cat("\n")
print('LeanRec:')
cumulative_at_p_all(OpenReviewsLearnRec, p)
cat("\n")
print('RetentionRec:')
cumulative_at_p_all(OpenReveiwsRetentionRec, p)
cat("\n")
print('TurnoverRec:')
cumulative_at_p_all(OpenReviewsTurnoverRec, p)
cat("\n")
print('WhoDo:')
cumulative_at_p_all(OpenReviewsWhoDo, p)
cat("\n")

print(' -------- RQ2: Recommenders++ --------')
cat("\n")

print('Authorship++:')
cumulative_at_p_all(OpenReviewsAuthorshipRecPlus, p)
cat("\n")
print('RevOwnRec++:')
cumulative_at_p_all(OpenReviewsRevOwnRecPlus, p)
cat("\n")
print('cHRev++:')
cumulative_at_p_all(OpenReviewsCHRevPlus, p)
cat("\n")
print('LeanRec++:')
cumulative_at_p_all(OpenReviewsLearnRecPlus, p)
cat("\n")
print('RetentionRec++:')
cumulative_at_p_all(OpenReveiwsRetentionRecPlus, p)
cat("\n")
print('TurnoverRec++:')
cumulative_at_p_all(OpenReviewsTurnoverRecPlus, p)
cat("\n")
print('WhoDo++:')
cumulative_at_p_all(OpenReviewsWhoDoPlus, p)
cat("\n")

print(' -------- RQ3: FarAwareRec --------')
cat("\n")
print('FarAwareRec:')
cumulative_at_p_all(openFarAwareRec, p)
cat("\n")
print(' -------- RQ4: HoardedXRec --------')
cat("\n")
print('Hoarded2Rec...')
cumulative_at_p_all(OpenReviewsHoarded2Rec, p)
cat("\n")
print('Hoarded3Rec...')
cumulative_at_p_all(OpenReviewsHoarded3Rec, p)
cat("\n")
print('Hoarded4Rec...')
cumulative_at_p_all(OpenReviewsHoarded4Rec, p)
cat("\n")



# You can plot Lorenz curve to show area differences in background methodology

plot(seq(1:100), seq(1:100), type = 'l', lwd = 3, lty = "solid", ylab = "Cumulative Percentage of Reviews", xlab = "Percentage of Reviewers")
plot_line_percentage_percentage(percentage_percentage_freq(OpenReviewsReality$Kubernetes), col='red', lty = "solid")
plot_line_percentage_percentage(percentage_percentage_freq(OpenReviewsAuthorshipRec$Kubernetes), lty = "dotted", pch = 2)
plot_line_percentage_percentage(percentage_percentage_freq(OpenReviewsRevOwnRec$Kubernetes), lty = "dotdash", pch = 2)
plot_line_percentage_percentage(percentage_percentage_freq(OpenReviewsCHRev$Kubernetes), lty = "twodash", pch = 2)
plot_line_percentage_percentage(percentage_percentage_freq(OpenReviewsLearnRec$Kubernetes), lty = "dashed", pch = 2)
plot_line_percentage_percentage(percentage_percentage_freq(OpenReveiwsRetentionRec$Kubernetes), lty = "dashed", pch = 2)
plot_line_percentage_percentage(percentage_percentage_freq(OpenReviewsTurnoverRec$Kubernetes), lty = "dashed", pch = 2)
plot_line_percentage_percentage(percentage_percentage_freq(OpenReviewsWhoDo$Kubernetes), lty = "longdash", pch = 2)
abline(v = 20)
legend(
  "bottomright", # Places the legend in the bottom-right corner
  legend = c(
    "Actual-Workload",
    "AuthorshipRec++",
    "RevOwnRec++",
    "cHRev++",
    "LearnRec++",
    "RetentionRec++",
    "TurnoverRec++",
    "Whodo++",
    "x = y"
  ),
  lty = c('solid', 'dotted', 'dotdash', 'twodash', 'dashed', 'dashed', 'dashed', 'longdash', 'solid'),
  col = c('red', 'black', 'black', 'black', 'black', 'black', 'black', 'black', 'black'),
  lwd = 3,
  cex = 1.2
)#dev.off()

# # discussion plot (replace Rust with any other project to see results for different projects)
# #pdf("~/Downloads/WorkloadAUCDiscussion.pdf")
plot(seq(1:100), seq(1:100), type = 'l', lwd = 3, lty = "solid",  ylab = "Cumulative Percentage of Reviews", xlab = "Percentage of Reviewers")
plot_line_percentage_percentage(percentage_percentage_freq(OpenReviewsReality$Rust), col='red', lty = "solid")
plot_line_percentage_percentage(percentage_percentage_freq(OpenReviewsTurnoverRec$Rust), lty = "dotted", pch = 2)
plot_line_percentage_percentage(percentage_percentage_freq(OpenReviewsTurnoverRecPlus$Rust), lty = "dotted", pch = 2)
plot_line_percentage_percentage(percentage_percentage_freq(openFarAwareRec$Rust), lty = "dotdash", pch = 2)
plot_line_percentage_percentage(percentage_percentage_freq(OpenReviewsHoarded2Rec$Rust), lty = "longdash", pch = 2)
plot_line_percentage_percentage(percentage_percentage_freq(OpenReviewsHoarded3Rec$Rust), lty = "longdash", pch = 2)
plot_line_percentage_percentage(percentage_percentage_freq(OpenReviewsHoarded4Rec$Rust), lty = "longdash", pch = 2)
abline(v = 1.5)
abline(v = 10)
abline(v = 20)
abline(h = 80)
abline(h = 60)
abline(h = 20)
legend(
  "bottomright", # Places the legend in the bottom-right corner
  legend = c(
    "Actual-Workload", "TurnoverRec", "TurnoverRec++", "FarAwareRec",
    "Hoarded2Rec", "Hoarded3Rec", "Hoarded4Rec", "x = y"
  ),
  lty = c('solid', 'dotted', 'dashed', 'dotdash', 'longdash', 'longdash', 'longdash', 'solid'),
  col = c('red', 'black', 'black', 'black', 'black', 'black', 'black', 'black'),
  lwd = 3,
  cex = 1.2
)