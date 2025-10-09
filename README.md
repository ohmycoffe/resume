# Resume Website
This is a resume website built with Jekyll and hosted on GitHub Pages: https://ohmycoffe.github.io/resume

You don't need to install Jekyll locally to maintain the site, because GitHub Actions automatically handles the build and deployment. Just edit the index.md file and push your changes to the main branch.

If you’d like to preview changes locally, follow the instructions below.

You may install Ruby and Jekyll locally, or use Docker to build and serve the site.

## Local Setup and Usage

### Prerequisites

Install Ruby

```bash
sudo apt update
sudo apt install ruby-full

ruby --version
gem --version
```

### Setup Project

```bash
bundle config set --local path 'vendor/bundle'
bundle config set --local disable_shared_gems true

bundle install
```

Then you can build and serve the site locally:

```bash
make build-site # build static site
make serve-site # serve locally
```

## Docker Setup and Usage

You need to have Docker installed. Then you can build the Docker image and run the container:

```bash
make docker-build-image # build Docker image
make docker-serve-site # serve with Docker (== `make serve-site`)
make docker-build-site  # build site with Docker (== `make build-site`)
```
