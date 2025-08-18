## How to create a list of files or folders with their realpath 

To glob the `realpath` of files or folders in Linux, use the `find` command. 

The particular file or folder that is to be searched, needs to be included within single or double quotes, in the given command line example. 

- For files:

	find -name 'file_name_or_regex_pattern' -print0 | xargs -0 realpath
	
- For folders:

	find -type -d -name 'folder_name_or_regex_pattern' -print0 | xargs -0 realpath 
	

Example: 

	find -type d -name '.git' -print0 | xargs -0 realpath > dot_git_folders.md 

