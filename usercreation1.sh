#! /bin/bash/
# creating user for scripting
USERNAME=$1
EXUSER=${cat /etc/passwd | grep -w -i ${USERNAME}}
if [ "${USERNAME} = ${EXUSER}" ]
then
 echo "USER EXISTS please select new ones"
else
  echo "USER DOESNOT EXIST, lets create new ones
  useradd -m $USERNAME
fi
