#importing and inspecting data 

avian <- read.csv("~/projects/R_tasks/module2/avianHabitat_sewardPeninsula_McNew_2012.csv")
avian2 <- read.csv("~/projects/R_tasks/module2/avianHabitat2.csv", skip = 5, comment.char = "%", na.strings = "Don't remember", sep = ";")

total_avian <- rbind(avian, avian2)

#checking data

str(avian)
head(avian)
summary(avian)

str(avian2)
head(avian2)

str(total_avian)

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

names(avian2)
avian2$Observer <- "KL"
coverage_variables2 <- names(avian2)[-(1:3)][c(T,F)]
avian2$total_coverage <- rowSums(avian2[, coverage_variables2])
summary(avian2$total_coverage)

coverage_variables_total <- names(total_avian)[-(1:4)][c(T,F)]
total_avian$total_coverage <- rowSums(total_avian[, coverage_variables])
summary(total_avian$total_coverage)