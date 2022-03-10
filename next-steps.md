# Next Steps

### 1. Import your mdJSON dictionary to [mdEditor](https://go.mdeditor.org/#/dashboard)

You can find your mdJSON dictionary file in the outputs subfolder of the R Project folder. Open mdEditor in your browser and navigate to the Import tab at the top of the page. Drag and drop the newly written mdJSON file and click "Import Data." This will generate a Dictionary record with the dictionary title you specified in the R script (step 4 of the [Workflow](workflow.md)). You may need to refresh your browser if the dictionary does not immediately appear

![The mdEditor import window after dragging and dropping the example mdJSON dictionary file. ](<.gitbook/assets/Screen Shot 2022-02-25 at 9.38.55 PM (1).png>)

When viewing your Dictionary record, you will notice an orange exclamation mark next to the title that indicates the dictionary is incomplete and has missing or erroneous elements. Click the orange exclamation mark to view the details.

![The list of all missing and erroneous elements in the Example Dictionary record.](<.gitbook/assets/Screen Shot 2022-02-25 at 9.51.28 PM.png>)

These errors can be remedied by completing the Responsible Party field in the Main tab and the Entity Code Name and Definition fields in the Entities tab. For more information about these fields, refer to the [mdEditor User Manual](https://guide.mdeditor.org/reference/reference-manual.html). You will know your dictionary is free of errors when the orange triangle disappears and the edit icon next to your Dictionary record in the left-hand menu is green.

If you see more than these three errors, you should check your tabular dictionary for errors and make sure it is filled out as described in the [Tabular Dictionary Template](tabular-dictionary-template.md) page of this guide. If you re-complete the steps describe in the [Workflow](workflow.md) page and still see more than the above errors after importing to mdEditor, then visit the [Troubleshooting Tips](troubleshooting-tips.md) page of this guide for more assistance.&#x20;

### 3. Associate and maintain your dictionary

Once the Dictionary record is free of errors, it can be associated with the Metadata record(s) it describes (e.g. tabular dataset, shapefiles) to help create archival quality project metadata. For details of this process and other information, refer to the [mdEditor User Manual](https://guide.mdeditor.org).

Any future updates to your Dictionary record can be done manually in the mdEditor web application. Updating mdJSON dictionaries is beyond the scope of the functions in this R Project. However, it is recommended users maintain the tabular dictionary as a human-readable reference for the associated data product.&#x20;

