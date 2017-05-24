#! bin/bash



function escape_slashes {
    sed 's/\//\\\//g'
}

function change_line {
    echo "Today's date is" >> foo.txt
    local OLD_LINE_PATTERN=$1;
    local NEW_LINE=$2;
    local FILE=$3
    local NEW=$(echo "${NEW_LINE}" | escape_slashes)
    sed -i '/'"${OLD_LINE_PATTERN}"'/s/.*/'"${NEW}"'/' "${FILE}"
}

change_line $1 $2 $3
