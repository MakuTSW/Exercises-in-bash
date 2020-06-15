#Piotr Makosiej
#!/bin/bash

declare -A Numbers
Numbers["---"]="0"
Numbers["--x"]="1"
Numbers["-w-"]="2"
Numbers["-wx"]="3"
Numbers["r--"]="4"
Numbers["r-x"]="5"
Numbers["rw-"]="6"
Numbers["rwx"]="7"

read headline
while [ $? = 0 ]
do
    read private a1 a2 a3 a4 a5 a6 a7 name
    if [ $? -ne 0 ]; then 
        break 
    fi

    Number=${Numbers[${private:1:3}]}${Numbers[${private:4:3}]}${Numbers[${private:7:3}]}
    
    if [ ${private:0:1} == "d" ]
    then
        echo "$name/ $Number"
    else
        if [ ${private:3:1} == "x" ]
        then
            echo "$name* $Number"
        else
            echo "$name $Number"
        fi
    fi
done