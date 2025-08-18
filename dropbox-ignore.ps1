

$file = Get-Content -path "dot_git_folders.md" 

ForEach($line in $file){
	echo "$line"
	Set-Content -Path $line -Stream com.dropbox.ignored -Value 1
}

# Example: 
# For a single file or folder, run Windows Command Prompt (cmd) as Administrator and then use the following style of command 
# 	powershell.exe Set-Content -Path 'C:\Users\my\Documents\newproject\.git' -Stream com.dropbox.ignored -Value 1