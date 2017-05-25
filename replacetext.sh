#! bin/bash



function escape_slashes {
    sed 's/\//\\\//g'
}

echo "1: $existingvalue " >> foo.txt
echo "2: $newvalue" >> foo.txt
echo "3: $filepath" >> foo.txt

OLD_LINE_PATTERN=$existingvalue;
NEW_LINE=$newvalue;
FILE=$filepath
NEW=$(echo "${NEW_LINE}" | escape_slashes)
sed -i '/'"${OLD_LINE_PATTERN}"'/s/.*/'"${NEW}"'/' "${FILE}"



