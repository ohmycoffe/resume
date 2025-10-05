# Local Development Setup

Setup guide for this Jekyll resume site on Ubuntu/WSL.

## Install Ruby

```bash
sudo apt update
sudo apt install ruby-full

ruby --version
gem --version
```

## Setup Project

```bash
git clone <your-repo-url>
cd resume

bundle config set --local path 'vendor/bundle'
bundle config set --local disable_shared_gems true

bundle install

bundle exec jekyll serve
```

Open http://127.0.0.1:4000

## Daily Use

```bash
bundle exec jekyll serve
```

# TODO:
- use rbenv to manage ruby versions