library(knitr)

q1 <- qnorm(0.25)
q3 <- -q1 # from symmetry :)
q3

# step is another term for IQR
iqr <- q3 - q1
iqr

# the fences are (from formula) - same as Q1
lf <- q1 - 1.5 * iqr
uf <- -lf
uf
# uf <- q3 + 1.5 * iqr
# from symmetry property it's just -lf (important to remember for exam)

# results <- data.frame(
#   Q1 = q1,
#   Q3 = q3,
#   IQR = iqr,
#   LF = lf,
#   UF = uf
# )

# kable(results, format = "latex")