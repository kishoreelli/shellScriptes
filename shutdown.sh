#!/bin/bash

# Declare an array of remote server IP addresses
servers=("192.168.1.100" "192.168.1.101" "192.168.1.102")

# Declare an array of usernames for the remote servers
usernames=("user1" "user2" "user3")

# Declare an array of passwords for the remote servers
passwords=("pass1" "pass2" "pass3")

# Iterate through the servers array
for i in "${!servers[@]}"; do
    remote_server=${servers[$i]}
    username=${usernames[$i]}
    password=${passwords[$i]}
    # Use the sshpass command to log in to the remote server with the password and run the command
    sshpass -p "$password" ssh -t "$username"@"$remote_server" 'sudo poweroff'
done
