#!/bin/bash

# Directory with blog files (all markdown)
BLOG_DIR="blog/"  # Change to the correct directory containing your blog files

# Function to capitalize words (ignoring words <= 3 characters)
capitalize() {
  echo "$1" | awk '{for(i=1;i<=NF;i++) if(length($i)>3) $i=toupper(substr($i,1,1)) substr($i,2); print}'
}

# Loop over all .md files in the directory
for file in "$BLOG_DIR"*.md; do
  # Extract the first 10 characters of the filename as the date
  filename=$(basename "$file")
  date_from_filename="${filename:0:10}"

  # Generate a proper date format (YYYY-MM-DD)
  if [[ $date_from_filename =~ ^[0-9]{4}-[0-9]{2}-[0-9]{2}$ ]]; then
    date="$date_from_filename"
  else
    echo "Skipping $file: filename does not start with a valid date"
    continue
  fi

  # Extract the part of the filename after the first 10 characters, excluding the extension
  raw_title="${filename:11:-3}"

  # Replace special characters (hyphens and underscores) with spaces
  cleaned_title=$(echo "$raw_title" | tr '_-' ' ')

  # Capitalize words (ignoring words 3 characters or shorter)
  final_title=$(capitalize "$cleaned_title")

  # Check if the file starts with "---"
  if ! grep -q "^---" "$file"; then
    echo "No front matter found, adding complete front matter to $file"
    new_front_matter="---
title: \"$final_title\"
date: $date
tags: [\"journal\"]
---
"
    # Prepend the new front matter to the file
    echo -e "$new_front_matter\n$(cat "$file")" > "$file"

  else
    # If front matter exists, check if the closing "---" is present
    if ! grep -q "^---$" <<< $(tail -n 1 "$file"); then
      echo "Adding closing front matter '---' to $file"
      echo "---" >> "$file"
    fi

    # Read the current front matter of the file into a variable
    front_matter=$(sed -n '/^---$/,/^---$/p' "$file")

    # Add title if missing
    if ! grep -q "^title:" <<< "$front_matter"; then
      echo "Adding missing title to $file"
      sed -i "1s/^---$/---\ntitle: \"$final_title\"/" "$file"
    fi

    # Add date if missing
    if ! grep -q "^date:" <<< "$front_matter"; then
      echo "Adding missing date to $file"
      sed -i "1s/^---$/---\ndate: $date/" "$file"
    fi

    # Add tags if missing
    if ! grep -q "^tags:" <<< "$front_matter"; then
      echo "Adding missing tags to $file"
      sed -i "1s/^---$/---\ntags: [\"journal\"]/" "$file"
    fi
  fi
done
