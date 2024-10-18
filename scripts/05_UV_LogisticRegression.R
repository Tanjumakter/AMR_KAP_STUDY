# load packages

library(tidyverse)
library(gt)
library(gtsummary)
library(easystats)


data <- readRDS("D:/CHIRAL BD/homework/AMR_KAP_STUDY/Data/AMR_KAP_Data2_Processed.rds")

View(data)

# tbl uvregression


data |> 
  select(1:9, `knowledge_Level`) |> 
  tbl_uvregression(
    method = glm,
    y = `knowledge_Level`,
    method.args = list(family = binomial),
    exponentiate = T
  ) |>  
  bold_p(t = 0.05) |> 
  as_gt() |> 
  gtsave("D:/CHIRAL BD/homework/AMR_KAP_STUDY/tables/Table6_UV_Logistic_reg.docx")


# Level of Knowledge

#subset data

data1 <- data[, c(1:9, 69)]

data1 |>
  tbl_uvregression(
    method = glm,
    y = `knowledge_Level`,
    method.args = list(family = binomial),
    exponentiate = T
  ) |>  
  bold_p(t = 0.05) |> 
  as_gt() |>
  gtsave("D:/CHIRAL BD/homework/AMR_KAP_STUDY/tables/Table7_Factors_associated_with_level-of_Knowledge.docx")

summary(data1)

report(data1)

# level of attitude

data |> select(1:9, `Attitude_Level`) |> 
  tbl_uvregression(
    method = glm,
    y = `Attitude_Level`,
    method.args = list(family = binomial),
    exponentiate = T
  ) |>  
  bold_p(t = 0.05) |> 
  as_gt() |> 
  gtsave("D:/CHIRAL BD/homework/AMR_KAP_STUDY/tables/Table8_Factors_associated_with_level-of_attitude.docx")


# Level of practice

data |> select(1:9, `Practice_level`) |> 
  tbl_uvregression(
    method = glm,
    y = `Practice_level`,
    method.args = list(family = binomial),
    exponentiate = T
  ) |>  
  bold_p(t = 0.05) |> 
  as_gt() |> 
  gtsave("D:/CHIRAL BD/homework/AMR_KAP_STUDY/tables/Table9_Factors_associated_with_level-of_practice.docx")





