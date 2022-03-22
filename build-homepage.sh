#!/usr/bin/env bash

echo "Generating the README.md"

cat templates/README-header.md > README.md
echo "" >> README.md

for file in "$(find ./crew -type f)"; do
  echo "Adding the member: ${file}"
  cat "${file}" >> README.md
  echo -e "---\n" >> README.md
done

cat templates/README-footer.md >> README.md

echo "All crew members are updated!"
