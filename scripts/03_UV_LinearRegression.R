# load packages

library(tidyverse)
library(gt)
library(gtsummary)
library(easystats)


data <- readRDS("D:/CHIRAL BD/homework/AMR_KAP_STUDY/Data/AMR_KAP_Data2_Processed.rds")
View(data)

# building models and interpretation


# tbl_uvregrassion

data |> 
  select(1:9, `Total Knowledge Score`) |> 
  tbl_uvregression(
    method = lm,
    y = `Total Knowledge Score`
  ) |> 
  bold_p(t = 0.05) |> 
  as_gt() |> 
  gtsave("D:/CHIRAL BD/homework/AMR_KAP_STUDY/tables/Table4_UV_Lin_reg.docx")










