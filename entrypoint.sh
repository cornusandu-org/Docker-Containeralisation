#!/bin/sh
set -e

# Create users if they don't exist
id user1 2>/dev/null || useradd -m -s /bin/bash user1
id user2 2>/dev/null || useradd -m -s /bin/bash user2

# Set passwords (optional)
echo "user1:password1" | chpasswd
echo "user2:password2" | chpasswd

exec "$@"
