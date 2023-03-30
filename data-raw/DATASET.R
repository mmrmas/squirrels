## code to prepare `DATASET` dataset goes here

library(readr)
library(dbplyr)

# get data and proces into a df of 15 lines
nyc_squirrels_act_sample    <- read.csv("data-raw/nyc_squirrels_act_sample.csv")
nyc_squirrels_act_sample_15 <- head(nyc_squirrels_act_sample,15)

# create the dataset to be shared
usethis::use_data(nyc_squirrels_act_sample_15, overwrite = TRUE)

# generate documentation for this dataset
checkhelper::use_data_doc(
  "nyc_squirrels_act_sample_15",
  description = "The first 15 lines of nyc_squirrels_act_sample",
  source = "R"
  )

# create man page for documentation
attachment::att_amend_desc()


