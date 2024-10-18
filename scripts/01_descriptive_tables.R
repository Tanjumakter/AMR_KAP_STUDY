library(tidyverse)


install.packages("gtsummary")
install.packages("glue")

library(gt)
library(gtsummary)

data <- readRDS("D:/CHIRAL BD/homework/AMR_KAP_STUDY/Data/AMR_KAP_Data2_Processed.rds")
View(data)

# Table 1. Demographic characteristics of study participants

data |>
  select(1:11) |>
  tbl_summary() |> as_gt() |> gtsave("D:/CHIRAL BD/homework/AMR_KAP_STUDY/tables/Table1.docx")

View(data)


# Table 2.  Major sources of information about antibiotic

data |>
  select(47:55) |>
  tbl_summary() |> as_gt() |> gtsave("D:/CHIRAL BD/homework/AMR_KAP_STUDY/tables/Table2.docx")


# Table 3.  Level of knowledge, attitudes, and practices

data |>
  select(69:71) |>
  tbl_summary() |> as_gt() |> gtsave("D:/CHIRAL BD/homework/AMR_KAP_STUDY/tables/Table3.docx")






