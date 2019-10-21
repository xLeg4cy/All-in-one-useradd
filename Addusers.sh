#!/bin/bash

echo "Full name of the user"
read fullname
echo "Username of the user"
read user
echo "Do you want to add $user to one of the following groups: admins, developers, staffs, temps?"
read group

add -c "$fullname" $user | usermod -d /home/$group
echo "Acme123" | passwd --stdin $user

echo "User $fullname has been added with the default passwod"
echo "User $user has been added to $group group"
