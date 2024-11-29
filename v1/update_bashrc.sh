#!/bin/bash

# Configuration
CODES_FILE_PATH="codes.sh"  # Path to the codes.sh file
BASHRC_PATH="$HOME/.bashrc"  # Path to the .bashrc file
SCRIPT_TAG="# CODES.SH CONFIGURATION"  # Tag for identifying configuration blocks
SCRIPT_VERSION="v1.0"  # Version of the script for tracking updates

# Function to remove existing configuration from .bashrc
remove_existing_configuration() {
    if grep -q "$SCRIPT_TAG" "$BASHRC_PATH"; then
        echo "Removing existing codes.sh configuration from $BASHRC_PATH..."
        sed -i "\|$SCRIPT_TAG|,\|$SCRIPT_TAG END|d" "$BASHRC_PATH"
    fi
}

# Function to append codes.sh content to .bashrc
add_new_configuration() {
    echo "Adding new codes.sh content to $BASHRC_PATH..."
    {
        echo "$SCRIPT_TAG - Version: $SCRIPT_VERSION"  # Start tag with version information
        cat "$CODES_FILE_PATH"  # Include the content of codes.sh
        echo "$SCRIPT_TAG END"  # End tag
    } >> "$BASHRC_PATH"
}

# Script execution starts here
if [ ! -f "$CODES_FILE_PATH" ]; then
    # If codes.sh does not exist, terminate the script with an error
    echo "Error: $CODES_FILE_PATH does not exist in the current directory."
    exit 1
fi

# Remove the existing configuration block, if any
remove_existing_configuration

# Add the new configuration block
add_new_configuration

# Source the updated .bashrc to apply changes
echo "Sourcing $BASHRC_PATH to apply changes..."
source "$BASHRC_PATH"

# Print success message
echo "Configuration updated successfully!"

