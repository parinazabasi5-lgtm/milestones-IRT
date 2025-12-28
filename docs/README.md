# Docs — Milestones IRT

Goal: short, non-technical notes of the workflow.

## Workflow overview
1) Item development (emic/etic): draft parental milestone items; brief expert review.
2) Pilot & cleaning: use `R/cleaning_pipeline.R` to prepare data.
3) Structure: run `R/efa_cfa.R` to check dimensionality (EFA/CFA).
4) IRT modeling: run `R/irt_demo.R` (2PL), inspect ICC and test information.
5) Refine items: drop or edit weak items; plan checks for cross-cultural invariance (DIF).

## Figures
![Item characteristic curve](Rplot_Item%20characteristic%20curve.png)
![Test information curve](Rplot_Test%20information%20curve.png)
