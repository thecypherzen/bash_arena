#!/bin/bash
CHECK=48

while [[ $CHECK -eq 48 ]]
do
    echo '============LOGIN============'
    # when using read command, the -p flag keeps the cursor on same line as the\prompt.
    # the prompt is the next continuous string of characters that appear after the read command (or its flags)
    #
    read -p "Username: " USERNAME
    read -sp "Password: " PASS
    read -sp $'\n'"Confirm Password: " REPASS
    if [ $PASS != $REPASS ]; then
	echo -e "\n\nTry again: passwords do not match\n"
    else
	echo $'\n\n'Welcome $USERNAME$'\n'Your password is \"$PASS\". Keep it safe!
	CHECK=99
    fi
done
