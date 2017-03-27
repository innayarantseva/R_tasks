#importing and inspecting data (you can find reqired .csf in current repository)

avian <- read.csv("~/projects/R_tasks/module2/avianHabitat_sewardPeninsula_McNew_2012.csv")

#checking data

str(avian)
head(avian)
summary(avian)

any(!complete.cases(avian))
any(avian$PDB < 0)
any(avian$PDB > 100)

check_percente_range <- function(x) {
  any(x < 0 | x > 0)
}

#transforming variables

names(avian)
coverage_variables <- names(avian)[-(1:4)][c(T,F)]
avian$total_coverage <- rowSums(avian[, coverage_variables])
summary(avian$total_coverage)
