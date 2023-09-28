#!/bin/bash

### A shell script that allows a user to select an action
### from the menu, then displays the disk usage, uptime,
### or logged in users based on their choice. A 'q' will 
### quit and display "Goodbye!"

while true
do
  echo "1. Show disk usage."
  echo "2. Show system uptime."
  echo "3. Show the users logged into the system."
  read -p "What would you like to do? (Enter q to quit.) " CHOICE
  case "$CHOICE" in
    1)
      df -h
      echo
      ;;
    2)
      uptime
      echo
      ;;
    3)
      who
      echo
      ;;
    q)
      echo "Goodbye!"
      exit 0
      ;;
    *)
      echo "Invalid option."
      echo
      ;;
  esac
done