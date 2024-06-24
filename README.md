

# OpenSourceKyle

OpenSourceKyle is collection of my writings. These are not meant to descriptive and absolute in my beliefs, BUT they are meant to be my thoughts written out. Writing out my thoughts has helped with my anxious, obsessive way of thinking. I note this because **these writings could be wrong or controversial** among many other thigns. My goal is to give myself a place to flesh out my thinking better instead of waiting for the thoughts to be perfect.

# Installation

## Remote

Built via Github Actions: [![Deploy Jekyll with GitHub Pages dependencies preinstalled](https://github.com/OpenSourceKyle/OpenSourceKyle.github.io/actions/workflows/jekyll-gh-pages.yml/badge.svg)](https://github.com/OpenSourceKyle/OpenSourceKyle.github.io/actions/workflows/jekyll-gh-pages.yml)

## Local (Arch Linux)

The following instructions detail how to get started:

* https://jekyllrb.com/docs/installation/other-linux/#archlinux
* https://jekyllrb.com/docs/#instructions

```shell
# Install pkgs: Arch Linux
sudo pacman -S ruby base-devel

# Add gem binaries to $PATH
echo '
export GEM_HOME=$HOME/.gem
export PATH=$GEM_HOME/ruby/3.0.0/bin:$PATH
' >> ~/.zshrc

# Install Jekyll & Bundler
gem install jekyll bundler

# Automatically rebuild/serve website while editing
bundle exec jekyll serve --livereload
```