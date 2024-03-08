#!/bin/bash

echo copying docs folder to _docs...

# Copy docs and rename to _docs
cp -r docs _docs

echo renaming images path...

# Find in all ".md" in "_docs" subdirectories
find _docs -mindepth 2 -type f -name "*.md" | while read -r file; do
    # Replace all char sequence "./_img" by "../_img"
    sed -i 's/\.\/_img/..\/_img/g' "$file"
done

echo running pdf generator container...

docker run --rm -it \
  --cap-add=SYS_ADMIN \
  --user $(id -u):$(id -g) \
  -v $(pwd)/_docs:/home/node/docs:ro \
  -v $(pwd)/docs/pdf:/home/node/pdf:rw \
  -v $(pwd)/resources/cover.pdf:/home/node/resources/cover.pdf:ro \
  -e "PDF_OUTPUT_NAME=DOCUMENTATION.pdf" \
  ghcr.io/kernoeb/docker-docsify-pdf:latest

echo removing _docs directory...

rm -r _docs