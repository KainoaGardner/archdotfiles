i=1
for file in $(ls -tr); do
  mv "$file" "tile$(printf "%03d" $i).png"
  i=$((i+1))
done
