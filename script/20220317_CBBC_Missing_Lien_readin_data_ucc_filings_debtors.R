
#Jensen Duenkel, CBBC, reported File No 20220202001792923 filed 2/2/2022 9:28 AM
  #missing from a report for philip hardy run on 2_15.
library(readr)
library(here)
library(dplyr)
library(gt)

###########################################

  #the filing number is found using the MOSOS website page.
  #See D:\R_Projects\20220217_CBBC_reported_missing_lien\filing docs obtained from mosos site

##############################################

#override scientific notation to ensure the entire filing number appears as opposed to ####e16
ran2 <- c(1.810032e+09, 4)
options("scipen"=100, "digits"=4)
ran2

###############################

#20220314: most recent dataset 2022_03_14 (positive control)
filings_2022_03_14 <- read_csv(file = here("UCCDataFullComma_2022_03_14","Filings.txt"), col_names = FALSE)
     saveRDS(filings_2022_03_14, file = here("output_data","filings_2022_03_14.rds"))
Debtors_2022_03_14 <- read_csv(file = here("UCCDataFullComma_2022_03_14","Debtors.txt"), col_names = FALSE)
     saveRDS(Debtors_2022_03_14, file = here("output_data","Debtors_2022_03_14.rds"))
UCCDataFullComma_2022_03_14 <- read_csv(file = here("UCCDataFullComma_2022_03_14","FilingAmendments.txt"), col_names = FALSE)
     saveRDS(UCCDataFullComma_2022_03_14, file = here("output_data","UCCDataFullComma_2022_03_14.rds"))
SecuredParties_2022_03_14 <- read_csv(file = here("UCCDataFullComma_2022_03_14","SecuredParties.txt"), col_names = FALSE)
     saveRDS(SecuredParties_2022_03_14, file = here("output_data","SecuredParties_2022_03_14.rds"))

specific_filing_UCC1_2022_03_14 <- filter(filings_2022_03_14, X1 == "20220202001792923")
     saveRDS(specific_filing_UCC1_2022_03_14, file = here("output_data","specific_filing_UCC1_2022_03_14.rds"))
specific_filing_ucc3_2022_03_14 <- filter(filings_2022_03_14, X5 == "20220202001792923")
     saveRDS(specific_filing_ucc3_2022_03_14, file = here("output_data","specific_filing_ucc3_2022_03_14.rds"))

specific_Debtors_filingno_2022_03_14 <- filter(Debtors_2022_03_14, X1 == "20220202001792923")
     saveRDS(specific_Debtors_filingno_2022_03_14, file = here("output_data","specific_Debtors_filingno_2022_03_144.rds"))
#filter for debtor first; then filter for file number
     specific_Debtors_debtorname_2022_03_14 <- filter(Debtors_2022_03_14, X4 == "PHILLIPS HARDY INC" |
                                                   X4 == "Phillips Hardy Inc." |
                                                   X4 == "Phillips Hardy")
     saveRDS(specific_Debtors_debtorname_2022_03_14, file = here("output_data","specific_Debtors_debtorname_2022_03_14.rds"))
     specific_Debtors_debtorname_2022_03_14 <-  arrange(specific_Debtors_debtorname_2022_03_14, X1)
specific_Debtors_debtorname_fileno_2022_03_14 <- filter(specific_Debtors_debtorname_2022_03_14, X1 == "20220202001792923")
     saveRDS(specific_Debtors_debtorname_fileno_2022_03_14, file = here("output_data","specific_Debtors_debtorname_fileno_2022_03_14.rds"))

#should not appear in this filter because 20220202001792923 is a UCC1 filing.   This file contains UCC3 amendments
     specific_FilingAmendments_2022_03_14 <- filter(UCCDataFullComma_2022_03_14, X1 == "20220202001792923")
     saveRDS(specific_FilingAmendments_2022_03_14, file = here("output_data","specific_FilingAmendments_2022_03_14.rds"))

specific_SecuredParties_2022_03_14 <- filter(SecuredParties_2022_03_14, X1 == "20220202001792923")
     saveRDS(specific_SecuredParties_2022_03_14, file = here("output_data","specific_SecuredParties_2022_03_14.rds"))

###########################
     #the filing number 20220202001792923 is present in the 3-14-22 dataset

###################################
# 20220214:  dataset immediately after the dataset in which a filing dated 2_2_2022 should appear
filings_2022_02_14 <- read_csv(file = here("UCCDataFullComma_2022_02_14","Filings.txt"), col_names = FALSE)
     saveRDS(filings_2022_02_14, file = here("output_data","filings_2022_02_14.rds"))
Debtors_2022_02_14 <- read_csv(file = here("UCCDataFullComma_2022_02_14","Debtors.txt"), col_names = FALSE)
     saveRDS(Debtors_2022_02_14, file = here("output_data","Debtors_2022_02_14.rds"))
FilingAmendments_2022_02_14 <- read_csv(file = here("UCCDataFullComma_2022_02_14","FilingAmendments.txt"), col_names = FALSE)
     saveRDS(FilingAmendments_2022_02_14, file = here("output_data","FilingAmendments_2022_02_14.rds"))
SecuredParties_2022_02_14 <- read_csv(file = here("UCCDataFullComma_2022_02_14","SecuredParties.txt"), col_names = FALSE)
     saveRDS(SecuredParties_2022_02_14, file = here("output_data","SecuredParties_2022_02_14.rds"))

specific_filing_UCC1_2022_02_14 <- filter(filings_2022_02_14, X1 == "20220202001792923")
     saveRDS(specific_filing_UCC1_2022_02_14, file = here("output_data","specific_filing_UCC1_2022_02_14.rds"))
specific_filing_ucc3_2022_02_14 <- filter(filings_2022_02_14, X5 == "20220202001792923")
     saveRDS(specific_filing_ucc3_2022_02_14, file = here("output_data","specific_filing_ucc3_2022_02_14.rds"))

specific_Debtors_filingno_2022_02_14 <- filter(Debtors_2022_02_14, X1 == "20220202001792923")
     saveRDS(specific_Debtors_filingno_2022_02_14, file = here("output_data","specific_Debtors_filingno_2022_02_144.rds"))
#filter for debtor first; then filter for file number
specific_Debtors_debtorname_2022_02_14 <- filter(Debtors_2022_02_14, X4 == "PHILLIPS HARDY INC" | X4 == "Phillips Hardy Inc." |
                                                   X4 == "Phillips Hardy Inc." |
                                                   X4 == "Phillips Hardy")
     saveRDS(specific_Debtors_debtorname_2022_02_14, file = here("output_data","specific_Debtors_debtorname_2022_02_14.rds"))
     specific_Debtors_debtorname_2022_02_14 <-  arrange(specific_Debtors_debtorname_2022_02_14, X1)
specific_Debtors_debtorname_fileno_2022_02_14 <- filter(specific_Debtors_debtorname_2022_02_14, X1 == "20220202001792923")
     saveRDS(specific_Debtors_debtorname_fileno_2022_02_14, file = here("output_data","specific_Debtors_debtorname_fileno_2022_02_14.rds"))

#should not appear in this filter because 20220202001792923 is a UCC1 filing.  This file contains UCC3 amendments
specific_FilingAmendments_2022_02_14 <- filter(FilingAmendments_2022_02_14, X1 == "20220202001792923")
     saveRDS(specific_FilingAmendments_2022_02_14, file = here("output_data","specific_FilingAmendments_2022_02_14.rds"))

specific_SecuredParties_2022_02_14 <- filter(SecuredParties_2022_02_14, X1 == "20220202001792923")
     saveRDS(specific_SecuredParties_2022_02_14, file = here("output_data","specific_SecuredParties_2022_02_14.rds"))

###########################
     #the filing number 20220202001792923 is present in the 2-14-22 dataset



###################################
# 20220207: dataset in which a filing dated 2_2_2022 should appear
filings_2022_02_07 <- read_csv(file = here("UCCDataFullComma_2022_02_07","Filings.txt"), col_names = FALSE)
     saveRDS(filings_2022_02_07, file = here("output_data","filings_2022_02_07.rds"))
Debtors_2022_02_07 <- read_csv(file = here("UCCDataFullComma_2022_02_07","Debtors.txt"), col_names = FALSE)
     saveRDS(Debtors_2022_02_07, file = here("output_data","Debtors_2022_02_07.rds"))
FilingAmendments_2022_02_07 <- read_csv(file = here("UCCDataFullComma_2022_02_07","FilingAmendments.txt"), col_names = FALSE)
     saveRDS(FilingAmendments_2022_02_07, file = here("output_data","FilingAmendments_2022_02_07.rds"))
SecuredParties_2022_02_07 <- read_csv(file = here("UCCDataFullComma_2022_02_07","SecuredParties.txt"), col_names = FALSE)
     saveRDS(SecuredParties_2022_02_07, file = here("output_data","SecuredParties_2022_02_07.rds"))

specific_filing_UCC1_2022_02_07 <- filter(filings_2022_02_07, X1 == "20220202001792923")
     saveRDS(specific_filing_UCC1_2022_02_07, file = here("output_data","specific_filing_UCC1_2022_02_07.rds"))
specific_filing_ucc3_2022_02_07 <- filter(filings_2022_02_07, X5 == "20220202001792923")
     saveRDS(specific_filing_ucc3_2022_02_07, file = here("output_data","specific_filing_ucc3_2022_02_07.rds"))

specific_Debtors_filingno_2022_02_07 <- filter(Debtors_2022_02_07, X1 == "20220202001792923")
     saveRDS(specific_Debtors_filingno_2022_02_07, file = here("output_data","specific_Debtors_filingno_2022_02_074.rds"))
#filter for debtor first; then filter for file number
specific_Debtors_debtorname_2022_02_07 <- filter(Debtors_2022_02_07, X4 == "PHILLIPS HARDY INC" | X4 == "Phillips Hardy Inc." |
                                                   X4 == "Phillips Hardy Inc." |
                                                   X4 == "Phillips Hardy")
     saveRDS(specific_Debtors_debtorname_2022_02_07, file = here("output_data","specific_Debtors_debtorname_2022_02_07.rds"))
     specific_Debtors_debtorname_2022_02_07 <-  arrange(specific_Debtors_debtorname_2022_02_07, X1)
specific_Debtors_debtorname_fileno_2022_02_07 <- filter(specific_Debtors_debtorname_2022_02_07, X1 == "20220202001792923")
     saveRDS(specific_Debtors_debtorname_fileno_2022_02_07, file = here("output_data","specific_Debtors_debtorname_fileno_2022_02_07.rds"))

     #should not appear in this filter because 20220202001792923 is a UCC1 filing.   This file contains UCC3 amendments
specific_FilingAmendments_2022_02_07 <- filter(FilingAmendments_2022_02_07, X1 == "20220202001792923")
     saveRDS(specific_FilingAmendments_2022_02_07, file = here("output_data","specific_FilingAmendments_2022_02_07.rds"))

specific_SecuredParties_2022_02_07 <- filter(SecuredParties_2022_02_07, X1 == "20220202001792923")
     saveRDS(specific_SecuredParties_2022_02_07, file = here("output_data","specific_SecuredParties_2022_02_07.rds"))

###########################
     #the filing number 20220202001792923 is present in the 2-7-22 dataset




###################################
# 20220131: dataset immediately before 2_2_2022 (negative control)
filings_2022_01_31 <- read_csv(file = here("UCCDataFullComma_2022_01_31","Filings.txt"), col_names = FALSE)
     saveRDS(filings_2022_01_31, file = here("output_data","filings_2022_01_31.rds"))
Debtors_2022_01_31 <- read_csv(file = here("UCCDataFullComma_2022_01_31","Debtors.txt"), col_names = FALSE)
     saveRDS(Debtors_2022_01_31, file = here("output_data","Debtors_2022_01_31.rds"))
FilingAmendments_2022_01_31 <- read_csv(file = here("UCCDataFullComma_2022_01_31","FilingAmendments.txt"), col_names = FALSE)
     saveRDS(FilingAmendments_2022_01_31, file = here("output_data","FilingAmendments_2022_01_31.rds"))
SecuredParties_2022_01_31 <- read_csv(file = here("UCCDataFullComma_2022_01_31","SecuredParties.txt"), col_names = FALSE)
     saveRDS(SecuredParties_2022_01_31, file = here("output_data","SecuredParties_2022_01_31.rds"))

specific_filing_UCC1_2022_01_31 <- filter(filings_2022_01_31, X1 == "20220202001792923")
     saveRDS(specific_filing_UCC1_2022_01_31, file = here("output_data","specific_filing_UCC1_2022_01_31.rds"))
specific_filing_ucc3_2022_01_31 <- filter(filings_2022_01_31, X5 == "20220202001792923")
     saveRDS(specific_filing_ucc3_2022_01_31, file = here("output_data","specific_filing_ucc3_2022_01_31.rds"))

specific_Debtors_filingno_2022_01_31 <- filter(Debtors_2022_01_31, X1 == "20220202001792923")
     saveRDS(specific_Debtors_filingno_2022_01_31, file = here("output_data","specific_Debtors_filingno_2022_01_314.rds"))
#filter for debtor first; then filter for file number
specific_Debtors_debtorname_2022_01_31 <- filter(Debtors_2022_01_31, X4 == "PHILLIPS HARDY INC" | X4 == "Phillips Hardy Inc." |
                                                   X4 == "Phillips Hardy Inc." |
                                                   X4 == "Phillips Hardy")
     saveRDS(specific_Debtors_debtorname_2022_01_31, file = here("output_data","specific_Debtors_debtorname_2022_01_31.rds"))
     specific_Debtors_debtorname_2022_01_31 <-  arrange(specific_Debtors_debtorname_2022_01_31, X1)
specific_Debtors_debtorname_fileno_2022_01_31 <- filter(specific_Debtors_debtorname_2022_01_31, X1 == "20220202001792923")
     saveRDS(specific_Debtors_debtorname_fileno_2022_01_31, file = here("output_data","specific_Debtors_debtorname_fileno_2022_01_31.rds"))

     #should not appear in this filter because 20220202001792923 is a UCC1 filing.   This file contains UCC3 amendments
specific_FilingAmendments_2022_01_31 <- filter(FilingAmendments_2022_01_31, X1 == "20220202001792923")
     saveRDS(specific_FilingAmendments_2022_01_31, file = here("output_data","specific_FilingAmendments_2022_01_31.rds"))

specific_SecuredParties_2022_01_31 <- filter(SecuredParties_2022_01_31, X1 == "20220202001792923")
     saveRDS(specific_SecuredParties_2022_01_31, file = here("output_data","specific_SecuredParties_2022_01_31.rds"))

###########################
     #the filing number 20220202001792923 is not present in the 1-31-22 dataset


     #combine datasets
     df1 <- "filing number not found"
     df1 <- as_tibble(df1)
     df2 <- specific_filing_UCC1_2022_02_07 %>%
       select(X1)
     df3 <- specific_filing_UCC1_2022_02_14 %>%
       select(X1)
     df4 <- specific_filing_UCC1_2022_03_14 %>%
       select(X1)

     WhenDoesItAppear <- cbind(df1, df2, df3, df4)
     colnames(WhenDoesItAppear) <- c("1-31-22","2-7-22","2-14-22","3-14-22")

    WhenDoesItAppear


    df1 <- specific_Debtors_debtorname_2022_01_31 %>%
      select(X1) %>%
      add_row(X1 = "")
    df2 <- specific_Debtors_debtorname_2022_02_07 %>%
      select(X1)
    df3 <- specific_Debtors_debtorname_2022_02_14 %>%
      select(X1)
    df4 <- specific_Debtors_debtorname_2022_03_14 %>%
      select(X1)
    phillips_hardy <- cbind(df1, df2, df3, df4)
    colnames(phillips_hardy) <- c("MOSOS DF 1-31-22","MOSOS DF 2-7-22","MOSOS DF 2-14-22","MOSOS DF 3-14-22")

    phillips_hardy

    phillips_hardy_lien_just_before_2_2_22 <- filter(filings_2022_03_14, X1 == "202106070003004837")
    phillips_hardy_first_lien <- filter(filings_2022_03_14, X1 == "1309062773400" | X1 == "1309062773511")

    table <- rbind(phillips_hardy_first_lien, phillips_hardy_lien_just_before_2_2_22)
    colnames(table) <- c("UCC1 #","UCC1 Date/Time","?","LienType","Current Filing #","Lapse Date", "??")
    table <- table %>%
      gt()
    table

###################
#return options to default
options("scipen"=0, "digits"=7)
ran2




