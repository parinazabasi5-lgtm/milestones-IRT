# cleaning_pipeline.R
# Purpose: tiny, readable template for preparing parent-item data

# 1) Read CSV (replace with your real file later)
df <- read.csv("parent_items.csv")

# 2) Make sure Likert responses are numeric (example Q1..Q10)
df$Q1 <- as.numeric(df$Q1)

# 3) Handle missing values (very simple placeholder)
library(dplyr)
df <- dplyr::mutate(df, dplyr::across(dplyr::starts_with("Q"),
                     ~ ifelse(. %in% c("", NA), NA, .)))

# 4) Quick reliability check (alpha) just as a placeholder
# # install.packages("psych")  # run once in RStudio
library(psych)
items <- df[, grep("^Q", names(df))]
print(psych::alpha(items)$total$raw_alpha)
