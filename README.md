# FlyTrackerCompilation
Compile in a single .xls file all .xls files containing FlyTracker data extracted with the DataExtraction script.
1. Create a Compilation folder with the .xls files generated by the DataExtraction script.
2. Run the script in MatLab.
3. Select Compilation folder.
4. The script copies into a new table the labeled table from the first .xls file in the Compilation folder.
5. For each subsequent .xls file, the script copies into the new table the unlabelled tables below the previous table.
6. The new table is saved as "Compilation.xls" in the Compilation folder.
CRITICAL: MATLAB will generate errors and the execution of the script will abort if the .xls files put in the Compilation folder do not have the same dimensions.
