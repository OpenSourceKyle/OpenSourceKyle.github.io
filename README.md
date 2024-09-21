# OpenSourceKyle

**OpenSourceKyle** is a collection of my personal writings. These are not definitive or absolute expressions of my beliefs but reflections of my thoughts at a given time. Writing helps me manage anxiety and obsessive thinking, and this space allows me to process and refine my thoughts. Some content may be **incomplete, controversial, or mistaken**, but the goal is to document my thinking as it evolves, not to wait for perfection.

---

## Installation

### Remote

The site is built and deployed via GitHub Actions: [![Deploy Hugo site to Pages](https://github.com/OpenSourceKyle/OpenSourceKyle.github.io/actions/workflows/hugo.yml/badge.svg)](https://github.com/OpenSourceKyle/OpenSourceKyle.github.io/actions/workflows/hugo.yml)

### Local (Arch Linux)

Follow these steps to run the project locally:

- Install Hugo: [Hugo Documentation](https://gohugo.io/documentation/)
- Theme setup: 
  - [Docsy Theme Documentation](https://www.docsy.dev/docs/)
  - [Docsy Example](https://github.com/google/docsy-example)

```bash
# Install Hugo (Arch Linux includes the extended version)
sudo pacman -S hugo

# Serve the site locally and auto-rebuild on changes
hugo server
```

---

## Configuration

### Hosting: GitHub Pages

For deployment details, see the clickable badge above.

Reference: [GitHub Pages Documentation](https://docs.github.com/en/pages)

### DNS: Squarespace

To configure DNS with GitHub Pages and your domain, follow these steps:

#### Step 1: GitHub Pages Setup

Add your custom domain (`www.opensourcekyle.com`) in the [GitHub Pages settings](https://github.com/OpenSourceKyle/OpenSourceKyle.github.io/settings/pages).

![GitHub Domain Settings](readme-assets/domain_settings_github.png)

#### Step 2: Squarespace DNS Setup

Configure 5 DNS records in [Squarespace DNS settings](https://account.squarespace.com/domains/managed/opensourcekyle.com/dns/dns-settings).

![Squarespace Domain Settings](readme-assets/domain_settings_squarespace.png)
