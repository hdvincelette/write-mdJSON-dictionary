
# write-mdJSON-dictionary (Version 1)
# R script that writes an mdEditor mdJSON data dictionary using a tabular dictionary template
# Created by Hannah Vincelette
# Updated 2/24/2022

# The aim of this R script is to streamline the process of creating data 
# dictionaries in mdEditor. Rather than defining Domains and Attributes in 
# mdEditor (which can be a tedious and repetitive process), users can fill out 
# the provided tabular dictionary template and use this R script to generate an 
# mdJSON file which can be imported in mdEditor to create a dictionary record with completed 
# Domain and Attributes fields. After the remaining required fields are 
# completed in mdEditor, the dictionary can be associated with the Metadata 
# record(s) it describes (i.e. tabular dataset, shapefiles) to help create 
# archival quality metadata for a project. 


# Set your working directory
## Click  "Session" in the menu bar across the top of the screen,  
## hover over "Set Working Directory," then select "To Project Directory." 
# Your directory should end with "/write-mdJSON-dictionary."
getwd()

#### EDIT: Add information about your dictionary ####


# Specify the name of your dictionary file.
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

