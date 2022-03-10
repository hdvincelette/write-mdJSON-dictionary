# Workflow

### 1. Download the GitHub repository [write-mdJSON-dictionary](https://github.com/hdvincelette/write-mdJSON-dictionary)

Navigate to the GitHub repository for the write-mdJSON-dictionary R Project, click the green "Code" button and select "Download ZIP". Once the download is complete, unzip the folder and save it to a convenient location.&#x20;

![The GitHub repository page for the write-mdJSON-dictionary R Project.](<.gitbook/assets/Screen Shot 2022-02-26 at 10.43.42 PM.png>)

The write-mdJSON-dictionary R Project folder contains the following subfolders:

* docs: supporting materials (including the tabular dictionary template)
* inputs: files read into R scripts
* outputs: files written by R scripts
* scripts: R scripts
* write-mdJSON-dictionary.Rproj: working space for using R scripts

![The contents of the  write-mdJSON-dictionary R Project folder.](<.gitbook/assets/Screen Shot 2022-02-26 at 10.41.50 PM.png>)

### 2. Create the tabular dictionary

Navigate to the docs subfolder in the write-mdJSON-dictionary R Project folder and open "write.mdJSON\_Dictionary\_Template.xlsx." This tabular dictionary template is formatted specifically for use with this R project. Complete the dictionary with information for the data products you are describing in mdEditor. For more detailed instructions, refer to the [Tabular Dictionary Template](tabular-dictionary-template.md) page of this guide. When you are finished, save your dictionary to the inputs subfolder in the R Project folder. An example of a completed tabular dictionary is located in the inputs subfolder (called "Example\_Dictionary.xlsx").&#x20;

![An example of a completed tabular dictionary.](<.gitbook/assets/Screen Shot 2022-03-03 at 11.46.09 AM.png>)

### 3. Open the R Project and the R user script

Navigate to the R project folder and open "write-mdJSON-dictionary.Rproj." This is the workspace where you will access the R script that will reformat your tabular dictionary to mdJSON. In the lower right RStudio window, you should see the subfolders in the R Project folder. Open the scripts subfolder and click "write.mdJSON\_user\_script.R."&#x20;

![The write-mdJSON-dictionary RStudio workspace when "write.mdJSON\_user\_script.R" is opened.](<.gitbook/assets/Screen Shot 2022-02-26 at 10.55.53 PM.png>)

### 4. Configure and run the R script

There are only a few things you need to do to configure the R script to your dictionary.

* Set your working directory to the location of your R Project folder. This is likely the default working directory when you open the R Project, but you can verify this by running the code `getwd()`. Your directory should end with "/write-mdJSON-dictionary."
* Specify the name of your tabular dictionary file ("input\_file"<-) and the desired title for your dictionary in mdEditor ("title"<-). Run each line of code to save these values.

![The write-mdJSON-dictionary RStudio workspace when the R Script have been configured for the example tabular dictionary.](<.gitbook/assets/Screen Shot 2022-02-26 at 10.49.18 PM.png>)

There is nothing left to do but run the remaining lines of code in the R script. This will load required packages, load the functions, and run the functions. The newly written mdJSON dictionary can be found in the outputs subfolder of the R Project folder. The file will be named the same way as your tabular dictionary except with a .json file extension.

![The write-mdJSON-dictionary RStudio workspace when the entire R Script has been ran and the example mdJSON dictionary has been written to the outputs folder of the R Project folder.](<.gitbook/assets/Screen Shot 2022-02-26 at 10.49.30 PM.png>)

Want to see how this process works? The write-mdJSON-dictionary R Project is configured to successfully reformat the example tabular dictionary located in the inputs subfolder (called "Example\_Dictionary.xlsx"). You can test out the write-mdJSON-dictionary functions by running the R script exactly as is and it will save the example mdJSON dictionary to the outputs subfolder of the R Project folder. To visualize the example mdJSON dictionary simply import it to mdEditor and compare it to the example tabular dictionary.
