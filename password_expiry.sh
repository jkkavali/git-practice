#!/bin/bash
# List of users to check
users=("user1" "user2" "user3")
# Function to update password age
update_password_age() {
 local user=$1
 echo "Updating password age for user: $user"
 # Set password to expire in 15 days from now
 chage -d $(date +%Y-%m-%d) -M 15 $user
}
# Get the current date in seconds
current_date=$(date +%s)
# Loop through each user
for user in "${users[@]}"; do
 # Get the password expiry date
 expiry_date=$(chage -l $user | grep "Password expires" | cut -d: -f2 | xargs -I{} date -d {} 
+%s)
 # Calculate the number of days until expiry
 days_until_expiry=$(( (expiry_date - current_date) / 86400 ))
 # Check if the password expires in 3 days or less
 if [ $days_until_expiry -le 3 ]; then
 echo "Password for user $user is expiring in $days_until_expiry days."
 update_password_age $user
 else
 echo "Password for user $user is not expiring soon."
 fi
done
Make the script executabl