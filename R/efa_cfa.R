# efa_cfa.R
# Purpose: quick sketch of EFA/CFA steps for scale structure (placeholder)

# Example assumes you already have an item matrix "items" with columns Q1..Q10

# --- EFA (1–3 factors) ---
# install.packages("psych")  # run once in RStudio
# library(psych)
# # psych::fa.parallel(items)   # suggests number of factors
# efa2 <- psych::fa(items, nfactors = 2, rotate = "oblimin")
# print(efa2$loadings)

# --- CFA: simple 1-factor model ---
# install.packages("lavaan")  # run once
# library(lavaan)
# model <- 'F =~ Q1+Q2+Q3+Q4+Q5+Q6+Q7+Q8+Q9+Q10'
# fit <- lavaan::cfa(model, data = items, ordered = names(items))
# summary(fit, fit.measures = TRUE, standardized = TRUE)
