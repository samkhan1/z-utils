

$file = Get-Content -path "dot_git_folders.md" 

ForEach($line in $file){
	echo "$line"
	Set-Content -Path $line -Stream com.dropbox.ignored -Value 1
}

# Example: 
# 	Set-Content -Path 'C:\Users\esmi\Documents\cloudcover\Dropbox\GitHub\onetab\.git' -Stream com.dropbox.ignored -Value 1