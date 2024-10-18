# load packages
library(tidyverse)

library(readxl)
library(naniar)

install.packages("writexl")
library(writexl)

data <- read_xlsx("D:/CHIRAL BD/homework/AMR_KAP_STUDY/raw_data/AMR_KAP_Data2.xlsx")
View(data)


data$knowledge_Level <- cut(data$`PCT Knowledge`,
                            breaks = c(-Inf, 39, 59, Inf),
                            labels = c("Poor", "Moderate", "Good"),
                            right = FALSE)

View(data)

is.na(data$Knowledge_Level)

data$Attitude_Level <- cut(data$`PCT Attitude`,
                            breaks = c(-Inf, 39, 59, Inf),
                            labels = c("Poor", "Moderate", "Good"),
                            right = FALSE)

View(data)
is.na(data$Attitude_Level)

data$Practice_level <- cut(data$`PCT Practice`,
                            breaks = c(-Inf, 50, Inf),
                            labels = c("Poor", "Good"),
                            right = FALSE)

is.na(data$Practice_Level)


is.na(data)
sum(is.na(data))


miss_var_summary(data)

sum(duplicated(data))

write_xlsx(data, "D:/CHIRAL BD/homework/AMR_KAP_STUDY/Data/AMR_KAP_Data2_Processed.xlsx")

data_2 <- data

write_rds(data, "D:/CHIRAL BD/homework/AMR_KAP_STUDY/Data/AMR_KAP_Data2_Processed.rds")

data3 <- readRDS("D:/CHIRAL BD/homework/AMR_KAP_STUDY/Data/AMR_KAP_Data2_Processed.rds")


