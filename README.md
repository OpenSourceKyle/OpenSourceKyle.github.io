# OpenSourceKyle

OpenSourceKyle is collection of my writings. These are not meant to descriptive and absolute in my beliefs, BUT they are meant to be my thoughts written out. Writing out my thoughts has helped with my anxious, obsessive way of thinking. I note this because **these writings could be wrong or controversial** among many other things. My goal is to give myself a place to flesh out my thinking better instead of waiting for the thoughts to be perfect.

# Installation

## Remote

Built via Github Actions: TBD

## Local (Arch Linux)

The following instructions detail how to get started:

* <https://gohugo.io/documentation/>
* <https://www.docsy.dev/docs/>

```shell
# Install pkgs
# Arch Linux includes Extended version of Hugo by default
sudo pacman -S hugo

# Automatically rebuild/serve website while editing
hugo server
```

# Configuration

## Hosting: GitHub Pages

* Reference: <https://docs.github.com/en/pages>

GitHub Actions generates and deploys the website. Check the clickable badge above for more information.

## DNS: Squarespace

* Reference: <https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site/managing-a-custom-domain-for-your-github-pages-site>

To configure DNS to work with the domain there are 2 steps.

### Step 1

From the GitHub Pages settings page <https://github.com/OpenSourceKyle/OpenSourceKyle.github.io/settings/pages>, add the domain `www.opensourcekyle.com` to the "Custom Domain" section as seen below.

![](README.d/domain_settings_github.png)

### Step 2

From the Squarespace DNS setting page <https://account.squarespace.com/domains/managed/opensourcekyle.com/dns/dns-settings>, add 5 records in total as seen below.

![](README.d/domain_settings_squarespace.png)
