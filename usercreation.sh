#!/bin/bash
USERNAME=$1
EXUSER = $(cat/etc/passwd | grep -i -w ${USERNAME} | cut -d ':' -f 1)
if [$"{USERNAME}" = $"{EXUSER}"]
then
    echo "USER EXISTS.Please select a new one."
else
    echo "User dont exist, lets create user $USERNAME"
    useradd -m $USERNAME
    SPEC='!@#$%^&*'
    SPECHAR=$(echo $SPEC | fold -w1 | shuf | head -1) 
    PASSWORD=India@$(RANDOM)${SPECHAR}
    echo $PASSWORD
    echo $User
fi

