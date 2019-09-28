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

d7 <- read_csv(file="aurelia_15minCell_statareas.txt")
head(d6)
d8 <- read_csv(file="ENVREC.csv")
head(d7)
d9 <- read_csv(file = "STAREC_rev20190402.csv")
d10 <- read_csv(file = "INGEST_DATA.csv")
head(d9)
d11 <- read_csv("NEWBIOCODESBIG.csv")
d12 <- read_csv("SHRREC.csv")
d13 <- read_csv("CTDCASTREC.csv")
d14 <- read_csv("INVREC.csv")
d15 <- read_csv("ISTREC.csv")
d16 <- read_csv("VESSELS.csv")
d17 <- read_csv("CTDREC.csv")
d18 <- read_csv("BGSREC.csv")
d19 <- read_csv("CRUISES.csv")
d20 <- read_csv("GLFREC.csv")
d21 <- read_csv("lg_camera_class_groupings_20170113_phylo_orderd.csv")
d22 <- read_xlsx("transect_towtime.xlsx")
d23 <- read_xlsx("NameTranslator_table20140330.xlsx")
d24 <- read_csv("STAREC.csv")
#DONE



