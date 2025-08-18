# Powershell Script for reading a list of paths to folders, from a file,
# and then setting their attribute to "ignore" for Dropbox Sync 

$file = Get-Content -path "list_of_full_path_to_folders.md" 

ForEach($line in $file){
	echo "$line"
	Set-Content -Path $line -Stream com.dropbox.ignored -Value 1
}

# Example: 
# For a single file or folder, run Windows Command Prompt (cmd) as Administrator and then use the following style of command:
#
# 	powershell.exe Set-Content -Path 'C:\Users\my\Documents\newproject\.git' -Stream com.dropbox.ignored -Value 1