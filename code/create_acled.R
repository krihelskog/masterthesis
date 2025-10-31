library(readxl)
library(tidyverse)


# ---------------------------------------------------------
#             Step 1: READ ALL RAW ACLED DATA 
# ---------------------------------------------------------

# Africa 

Africa <- read_xlsx("raw_data/Africa_lagged_data_up_to-2024-10-24.xlsx")

# Middle East 

ME <- read_xlsx("raw_data/Middle-East_lagged_data_up_to-2024-10-24.xlsx")

# Latin America 

LA <- read_xlsx("raw_data/Latin-America-the-Caribbean_lagged_data_up_to-2024-10-24.xlsx")

# Europe and Central Asia

ECA <- read_xlsx("raw_data/Europe-Central-Asia_lagged_data_up_to-2024-10-24.xlsx")

# Asia and Pacific 

AP <- read_xlsx("raw_data/Asia-Pacific_lagged_data_up_to-2024-10-24.xlsx")


# -------------------------------------------------------
#           Step 2: BIND ROWS TOGETHER 
# -------------------------------------------------------

acled <- rbind(Africa, ME, LA, ECA, AP)


# -------------------------------------------------------
#           Step 3: SAVE AS CSV 
# -------------------------------------------------------

write_csv(acled, file = "processed data/acled_full_lagged_upto_oct2024.csv") 
