# datascience at NIT ------------------------------------------------------

# 1.0 Load libraries ----

# Import csv files
library(readr) # reading csv files
library(dplyr) # joining data
library(tidyr) # wrangling data


setwd("~/Documents/06_gh_page/data-science/script/input/session_01/03_files/DS_business_case")
# 2.0 Importing Files ----
?read_csv()

order_items_tbl    <- read_csv(file = "00_data/01_e-commerce/01_raw_data/olist_order_items_dataset.csv")
products_tbl       <- read_csv(file = "00_data/01_e-commerce/01_raw_data/olist_products_dataset.csv")

sellers_tbl         <- read_csv(file = "00_data/01_e-commerce/01_raw_data/olist_sellers_dataset_original.csv")

# orders_tbl          <- read_csv(file = "00_data/01_e-commerce/01_raw_data/olist_orders_dataset.csv")
# orders_payments_tbl <- read_csv(file = "00_data/01_e-commerce/01_raw_data/olist_order_payments_dataset.csv")
# customer_tbl        <- read_csv(file = "00_data/01_e-commerce/01_raw_data/olist_customers_dataset.csv")

# 3.0 Examining Data ----
products_tbl
glimpse(products_tbl)


# 4.0 Joining Data ----
?left_join()

# by product_id
left_join(order_items_tbl, products_tbl)

# if no common col name
left_join(order_items_tbl, products_tbl, by = c("product_id" = "product_id"))

#### Introduce the pipe
order_items_joined_tbl  <- order_items_tbl %>% 
                              left_join(products_tbl) %>%
                              left_join(sellers_tbl)


# Examine
order_items_joined_tbl %>% glimpse()

# Task: do it with location


# 5.0 Wrangling Data ----
# cagegory names

order_items_joined_tbl %>%
  
  # Separate product category name in main and sub
  separate(col    = product_category_name,
           into   = c("product_main_category_name", "product_sub_category_name"),
           sep    = " - ",
           remove = FALSE)



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