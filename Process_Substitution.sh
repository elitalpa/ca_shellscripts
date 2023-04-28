#!/bin/bash

echo

# sort content in 2 files and compare them, then use `tee` to store logs in lowercase while printing it on the console at the same time
echo "The difference :"
diff <(sort file1.txt) <(sort file2.txt) | tee >(tr '[:upper:]' '[:lower:]' > /tmp/alogfile.txt)

echo

echo "contents of /tmp/alogfile.txt:"
cat /tmp/alogfile.txt

echo

# # Notes:
# - Process substitution allows a process’s input or output to be referred to using a filename. It has two forms: output <(cmd), and input >(cmd).
# - we can use process substitution (`diff <(sort file1.txt) <(sort file2.txt)`) instead of:
# ```shell
# sort file1.txt > sorted_file1
# sort file2.txt > sorted_file2
# diff sorted_file1 sorted_file2
# ```
