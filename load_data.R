# Load data ====

# 1 Hepatic Scintigraphy Test
data_hepatic = read.csv("hepatic.csv")
str(data_hepatic)
sapply(data_hepatic, unique)
summary(data_hepatic)
with(data_hepatic, table(test, disease, useNA = "always"))
# for use as 1,0
data_hepatic$disease = 2 - data_hepatic$disease
data_hepatic$test = 2 - data_hepatic$test
data_hepatic$verified = 2 - data_hepatic$verified
sapply(data_hepatic, unique)
1 - mean(data_hepatic$verified)  # missing %

# 2 Diaphanography Test
data_diapha = read.csv("diaphanography.csv")
str(data_diapha)
sapply(data_diapha, unique)
summary(data_diapha)
with(data_diapha, table(test, disease, useNA = "always"))
# for use as 1,0
data_diapha$disease = 2 - data_diapha$disease
data_diapha$test = 2 - data_diapha$test
data_diapha$verified = 2 - data_diapha$verified
sapply(data_diapha, unique)
1 - mean(data_diapha$verified)  # missing %