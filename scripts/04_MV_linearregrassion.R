# load packages

library(tidyverse)
library(gt)
library(gtsummary)
library(easystats)


data <- readRDS("D:/CHIRAL BD/homework/AMR_KAP_STUDY/Data/AMR_KAP_Data2_Processed.rds")

View(data)

# Build the multivariate linear regression model

mv_model <- lm(`Total Practice Score` ~ `Parent’s age (years)` + `Parent’s sex` + 
                 `Parent’s education level` + `Employment status` + `Family type` + 
                 `Your average household income per month (BDT)` + `Child’s sex` + 
                 `Child’s age (years)` + `Number of children`, data = data)

summary(mv_model)
report(mv_model)

# tbl_regression

mv_model |> 
  tbl_regression() |> 
  bold_p(t = 0.05) |> 
  as_gt() |> 
  gtsave("D:/CHIRAL BD/homework/AMR_KAP_STUDY/tables/Table5_MV_Lin_reg.docx")









