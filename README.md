# Resume Website

This is a personal resume website built with Jekyll and hosted on GitHub Pages. You don't need to install Jekyll locally to maintain the site, as GitHub Actions handles the build and deployment process. Simply edit the `index.md` file and push your changes to the `main` branch. If you want to test changes locally, follow the instructions below.

## Local Development Setup

### Prequisites

Install Ruby

```bash
sudo apt update
sudo apt install ruby-full

ruby --version
gem --version
```

### Setup Project

```bash
git clone <repo-url>

bundle config set --local path 'vendor/bundle'
bundle config set --local disable_shared_gems true

bundle install
```

## Usage

```bash
make serve # serve locally
make build # build static site
```

## TODO:
- use rbenv to manage ruby versions