

# R-xlsx-to-mdJSON-dictionary (Version 1)
# R script that writes an mdEditor mdJSON data dictionary using an xlsx template
# Created by Hannah Vincelette
# Updated 2/24/2022


# The aim of this R script is to streamline the process of creating data 
# dictionaries in mdEditor. Rather than defining Domains and Attributes in 
# mdEditor (which can be a tedious and repetitive process), users can fill out 
# the provided xlsx dictionary template and use this R script to generate an 
# mdJSON file which can be imported in mdEditor to create a dictionary record with completed 
# Domain and Attributes fields. After the remaining required fields are 
# completed in mdEditor, the dictionary can be associated with the Metadata 
# record(s) it describes (i.e. tabular dataset, shapefiles) to help create 
# archival quality metadata for a project. It is important to note this R script 
# is meant to initiate mdEditor dictionary records, not update them, which 
# should be done manually in the mdEditor web application. It is recommended 
# users maintain the xlsx dictionary as a human-readable reference for the 
# associated data product.

# Users should become familiar with mdEditor before using this script. 
browseURL("https://go.mdeditor.org/#/dashboard")
# The mdEditor guide User Manual can be accessed here:
browseURL("https://guide.mdeditor.org/")


#### Before you begin ####

## Complete the xlsx dictionary template
browseURL("https://github.com/hdvincelette/R-xlsx-to-mdJSON-dictionary/blob/main/docs/xlsx.to.mdJSON_Dictionary_Template.xlsx?raw=true")

## Verify the following:
### 1) "datatype", "domainItem_name", "domainItem_value", and "definition" are completed for all rows
### 2) "domainId" is "yes" for every column name row with defined permissible values

# IMPORTANT: Save your xlsx dictionary to the inputs folder

#### EDIT: Indicate your file info here ####

# Set your working directory
## Session -> Set Working Directory -> To Project Directory
setwd(getwd())

# Specify the name of your xlsx dictionary file
input_file<-"Example_Dictionary.xlsx"

# Specify the desired name of your mdJSON dictionary file
output_file<-"Example_Dictionary.json"

# Specify the desired name of your dictionary in mdEditor
title<- "Example"


#### DO NOT EDIT: Create your mdJSON dictionary ####

# Load required packages
source("scripts/xlsx.to.mdJSON_packages.R")


# Load the function
source("scripts/xlsx.to.mdJSON_functions.R")


# Run the function
xlsx.to.mdJSON(input_file,output_file,title)


#### Next steps ####

# You can find your mdJSON dictionary file in the outputs folder 

# Import your mdJSON dictionary to mdEditor
## Navigate to the mdEditor import tab
browseURL("https://go.mdeditor.org/#/import")
## Drag and drop the newly written mdJSON file to generate a dictionary in mdEditor
## You may need to refresh the browser if the dictionary does not appear

# Complete the remaining required fields (click the orange triangle for a complete list)
## Main tab: Responsible Party
## Entity tab: Code Name, Definition

# Associate the dictionary with Metadata records