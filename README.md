# IESSB commissioning documentation

This documentation was generated using [docsify](https://docsify.js.org/#/).

Docsify loads and parses your Markdown files and displays them as a website.

## Prerequisites

[nodejs](https://nodejs.org/en) installed.

## Install docsify

It is recommended to install `docsify-cli` globally, which helps initializing and previewing the website locally.

```bash
npm i docsify-cli -g
```

## Preview your site

Run the local server with `docsify serve`. You can preview your site in your browser on `http://localhost:3000`.

```bash
docsify serve docs
```

## Generate the pdf version

Go in the project root directory. **Not the docs directory**.

If not already done, pull the pdf generator docker image:

```bash
docker pull ghcr.io/kernoeb/docker-docsify-pdf:latest
```

Then to generate the documentation, run:

```bash
docker run --rm -it \
  --cap-add=SYS_ADMIN \
  --user $(id -u):$(id -g) \
  -v $(pwd)/docs:/home/node/docs:ro \
  -v $(pwd)/docs/pdf:/home/node/pdf:rw \
  -v $(pwd)/resources/cover.pdf:/home/node/resources/cover.pdf:ro \
  -e "PDF_OUTPUT_NAME=DOCUMENTATION.pdf" \
  ghcr.io/kernoeb/docker-docsify-pdf:latest
```

The documentations will be generated under docs/pdf

### Tips to include images

Check that the images paths are correct.

"../_img/1_cabling/_HP_Control/relay.PNG"

The number of dots have to match the number of return in the filesystem.

Check that there are no tabs before an image include

!> always check that all images are included correctly before pushing on main