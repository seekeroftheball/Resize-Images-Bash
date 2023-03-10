#!/bin/bash

# Set the source directory where the images are stored
src_dir="$HOME/Desktop/Resize"

# Set the destination directory where the resized images will be saved
dest_dir="$HOME/Desktop/Done"

# Loop through all files in the source directory
for file in "$src_dir"/*
do
    # Check if the file is an image file (JPEG, PNG, GIF, etc.)
    if [[ "$file" =~ \.(jpg|jpeg|png|gif)$ ]]
    then
        # Get the filename without the extension
        filename=$(basename "$file" | cut -d. -f1)
        
        # Resize the image to 64 width while maintaining the aspect ratio
        sips -Z 64 --out "$dest_dir/$filename.jpg" "$file"
    fi
done

echo "All images resized to 64 width while maintaining aspect ratio and saved to Done folder on desktop!"