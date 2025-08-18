## Selectively ignore files or folders from being Synced by Dropbox

For example, if `.git` folders are to be ignored by Dropbox Sync in Windows OS:

- Step 1: 

	Create a list of the `realpaths` to files and folders that need to be ignored, using Python's inbuilt `glob` function, or by using the `find` command in a terminal of a Linux subsystem, and then save it to a file, such as "dot_git_folder.md"
	
	In the text string of the file paths, if required, change "/mnt/c" to "C:" and "/" to "\" to make the string Windows compatible. 
	
- Step 2: 

	Download the file ["dropbox-ignore.ps1"]() to a folder, and then `cd` into that folder. Place the file with the ignore list in the same folder. Or else, modify the given code in dropbox-ignore.ps1 to include the path to the file containing the ignore list.     

	`source` the dropbox-ignore.ps1 file by using Command Prompt (as admin) at its folder's location, by inputting the following command: 
	
		powershell.exe -ExecutionPolicy Bypass -File "dropbox-ignore.ps1"


- Step 3:

	Wait for the process to complete, which can take quite some time depending on the number of files or folders in the ignore list. 
	
- Note: 

	To undo ignore, use the following command on each file: 

		Clear-Content -Path 'C:\path_to_file_or_folder' -Stream com.dropbox.ignored