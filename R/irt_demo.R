# IRT demo (2PL) for developmental milestone items
# Project: Developmental milestones across cultures — Leuphana/MPI
# File: R/irt_demo.R

library(mirt)

set.seed(42)
# Simulate 20 binary items for 500 respondents (1 latent factor)
data <- simulate(mirt.model("F = 1-20"), itemtype = "2PL", N = 500)

# Fit a 2-parameter logistic model (a = discrimination, b = difficulty)
mod <- mirt(data, 1, itemtype = "2PL")

# Inspect item parameters
params <- coef(mod, IRTpars = TRUE, simplify = TRUE)$items
print(head(params, 10))

# Optional plots (run in RStudio):
# plot(mod, type = "trace", which.items = 5)  # Item characteristic curve
# plot(mod, type = "info")                    # Test information curve

