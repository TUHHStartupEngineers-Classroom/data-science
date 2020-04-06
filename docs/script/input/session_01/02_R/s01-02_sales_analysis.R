# datascience at NIT ------------------------------------------------------

# 1.0 Load libraries ----

# Import csv files
library(dplyr)
library(readr)


# 2.0 Importing Files ----
?read_csv()

products_tbl <- read_csv(file = "00_data/01_e-commerce/01_raw_data/olist_products_dataset.csv")
sellers_tbl  <- read_csv(file = "00_data/01_e-commerce/01_raw_data/olist_sellers_dataset.csv")
orders_tbl   <- read_csv(file = "00_data/01_e-commerce/01_raw_data/olist_orders_dataset.csv")


# 3.0 Examining Data ----
products_tbl
glimpse(products_tbl)


# 4.0 Joining Data ----




# 5.0 Wrangling Data ----





# 6.0 Business Insights ----


# 6.1 Sales by Year ----

# Step 1 - Manipulate




# Step 2 - Visualize



# 6.2 Sales by Year and Category 2 ----


# Step 1 - Manipulate




# Step 2 - Visualize




# 7.0 Writing Files ----


# 7.1 Excel ----


# 7.2 CSV ----


# 7.3 RDS ----