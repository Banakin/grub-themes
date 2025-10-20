in_dir="assets"
out_dir="themes"

for file in "$in_dir"/backgrounds/*.png; do
  if [ -f "$file" ]; then
    file_name=$(basename "$file" .png)
    out_path=$out_dir/$(basename "$file" .png).tar

    echo "Found background file: $file"
    echo "Creating theme: $file_name..."

    # Create theme tar
    tar -cf $out_path \
      --transform "s|backgrounds/"$file_name".png|background.png|" \
      --transform "s|fonts/||" \
      --transform "s|menu/||" \
      "$in_dir"/icons \
      "$in_dir"/fonts \
      "$in_dir"/menu \
      "$in_dir"/theme.txt \
      "$in_dir"/backgrounds/"$file_name".png \

    if [ $? -eq 0 ]; then
      echo "Creating "$file_name" placed at "$out_path"."
    else
      echo "Creating "$file_name" theme failed."
    fi

  fi
done