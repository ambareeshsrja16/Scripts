#! /usr//bin/env bash

# Check if the correct number of arguments is given
if [ $# -ne 2 ]; then
  echo "Usage: $0 <source_dir> <destination_dir>"
  exit 1
fi

# Check if the source directory exists
if [ ! -d "$1" ]; then
  echo "Error: Source directory does not exist."
  exit 1
fi

# Check if the destination directory exists, if not create it
if [ ! -d "$2" ]; then
  mkdir -p "$2"
fi

# Use find command to find all files in the source directory and its subdirectories, then copy them to the destination directory
find "$1" -type f -exec cp {} "$2" \;

echo "Files have been copied successfully, flattening the directory structure."


