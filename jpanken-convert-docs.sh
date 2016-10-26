#!/bin/bash

# Ask for a filename
echo "Which file would you like to convert?"

# Read the filename
read FILENAME

# Convert markdown to HTML
echo "Converting from markdown to HTML..."
pandoc -S -o $FILENAME.html $FILENAME.md 

# Convert markdown to DOCX
echo "Converting from markdown to DOCX..."
pandoc -S -o $FILENAME.docx $FILENAME.md

# Convert markdown to ODT
echo "Converting from markdown to ODT..."
pandoc -S -o $FILENAME.odt $FILENAME.md

# Convert markdown to PDF
echo "Converting from markdown to PDF..."
pandoc -S -o $FILENAME.pdf $FILENAME.md

# Indicate that files have been converted
echo "Converted $FILENAME to HTML, DOCX, ODT, PDF"
