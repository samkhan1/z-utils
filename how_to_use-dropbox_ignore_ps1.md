## Selectively exclude files or folders from being Synced by Dropbox

For example, if `.git` folders are to be ignored by Dropbox Sync in Windows OS:

- Step 1: 

	Create a list of the `realpaths` to files and folders that need to be excluded from syncing via Dropbox, by using Python's inbuilt `glob` function, or by using the `find` command in a terminal of a Linux subsystem, and then save it to a file, such as "dot_git_folders.md"
	
	In the text string of the file paths, if required, change "/mnt/c" to "C:" and "/" to "\\" to make the string Windows compatible. 
	
	See [this article](https://github.com/samkhan1/z-utils/blob/main/to_glob_files_or_folders.md) on how to use `find` in a Linux environment to create the required list of paths to folders. 
	
- Step 2: 

	Download the file [dropbox-ignore.ps1](https://github.com/samkhan1/z-utils/blob/main/dropbox-ignore.ps1) to a folder, and then `cd` into that folder. Place the file with the ignore-list in the same folder. Or else, modify the given code in dropbox-ignore.ps1 to include the path to the file containing the ignore-list.     

	`execute` the dropbox-ignore.ps1 file by using Command Prompt (as admin) at its folder's location, by inputting the following command: 
	
		powershell.exe -ExecutionPolicy Bypass -File "dropbox-ignore.ps1"


- Step 3:

	Wait for the process to complete, which can take quite some time depending on the number of files or folders in the ignore-list.  


	
- Note: 

	To undo ignore, use the following command on each file: 

		Clear-Content -Path 'C:\path_to_file_or_folder' -Stream com.dropbox.ignored

--- 
		
- Reference: 

	- For help on how to selectively exclude files and folders from being synced via Dropbox on Linux, Mac OS, or Windows, please see - https://help.dropbox.com/sync/ignored-files 
	
	- A more sophisticated software tool written in Rust, for making Dropbox ignore selected files and folders from syncing - [dropignore by mweirauch](https://github.com/mweirauch/dropignore) 
	
	- Install Linux using Window Subsystem for Linux (WSL) - https://learn.microsoft.com/en-us/windows/wsl/install  