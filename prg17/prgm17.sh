read -p "enter file name: " filename

if [ -f "$filename" ]; then
    line_c=0
    word_c=0
    while IFS= read -r line
    do
        line_c=$(($line_c + 1))
        for word in $line
        do
            word_c=$((word_c + 1))
        done
    done < "$filename"
    echo "number of lines: $line_c"
    echo "number of words: $word_c"
else
    echo "file not found"
fi
