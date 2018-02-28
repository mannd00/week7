#! /bin/bash

echo "Welcome to Week 7 Script for Chapter 6"
echo "We will be creating a unit file for a service and see what it can do."




echo "We have this test service called Lab7.service. Lets install it!"
cp Lab7.service /etc/systemd/system/

echo "And run it!"
systemctl start Lab7.service

echo "Now we can check it's status"
systemctl status Lab7.service

echo "Clean up, deleting our test files."

systemctl stop Lab7.service
rm /etc/systemd/system/Lab7.service
