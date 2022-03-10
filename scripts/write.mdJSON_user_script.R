
# write-mdJSON-dictionary (Version 1)
# R script that writes an mdEditor mdJSON data dictionary using a tabular dictionary template
# Created by Hannah Vincelette
# Updated 2/26/2022


# Set your working directory
## Click "Session" in the menu bar across the top of the screen,  
## hover over "Set Working Directory," then select "To Project Directory." 
# Your directory should end with "/write-mdJSON-dictionary."
getwd()


#### EDIT: Add information about your tabular dictionary ####

# Specify the name of your tabular dictionary
input_file<-"Example_Dictionary.xlsx"


# Specify the desired title of your dictionary in mdEditor
title<- "Example"


#### DO NOT EDIT: Run to create your mdJSON dictionary ####

# Load required packages
source("scripts/write.mdJSON_packages.R")


# Load the functions
source("scripts/write.mdJSON_functions.R")


# Run the function
write.mdJSON(input_file,title)

