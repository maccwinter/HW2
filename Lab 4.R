#Lab 4
library(tidyverse)
d1 <- read_csv(file="ISIIS201405281105.txt")
d1
d2 <- read_csv(file="ISIIS201405281609.txt")
d2
d3 <- read_csv(file="ISIIS201405281124.txt")
head(d3)
d4 <- read_csv(file = "ISIIS201405281215.txt")
head(d4)
library(readxl)
d5 <- read_xlsx(path="Aurelia_SEAMAP_2012-2018_30minCell.xlsx", sheet =1, col_names = T)

d6 <- load("aurelia_15minCell_statareas.Rdata")
head(d6)

d6 <- read_csv(file="aurelia_15minCell_statareas.txt")
head(d6)
