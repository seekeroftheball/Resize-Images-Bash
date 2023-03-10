# Resize-Images-Bash
A simple Bash script for quickly resizing a group of images in a folder on Unix/Linux systems.

Resizes images width while maintaining aspect ratio. 

Outputs resized images to a destination folder.

## How to use
- Open resize_images.sh with a text editor.
- Default directory pulls images from a folder called "Resize" on the desktop.
- Change src_dir="$HOME/Desktop/Resize" to your image directory.
- Default output of resized images go to a folder called "Done" on the desktop.
- Change dest_dir="$HOME/Desktop/Done" to your destination folder.
- Default resize will output image as 64 px wide
- Change [64]px size from this line in the code: sips -Z 64 --out "$dest_dir/$filename.jpg" "$file"
- Save and run shell script from terminal.
