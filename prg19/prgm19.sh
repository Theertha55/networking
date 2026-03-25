read -p "Enter the first file: " file1
read -p "Enter the second file: " file2
if cmp -s "$file" "$file2"; then
        echo "The file are identical. Deleting $file2...."
        rm "$file2"
else
        echo "The files are different."
fi
~        
