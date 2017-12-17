# PSB Technical Support

This README is a brief summary of all the duties required to maintain and support the **Palmetto State Brewers Club** 
website and related technologies. These are the primary duties of the **VP of Communication**. Any additional
notes and duties should be captured here as needed.

## Documentation

- Current and past theme's documentations/examples should kept in the `docs/` directory
- Include any additional notes and files there

## Setup Project

- Install the ruby and its development package 
- Install [Jekyll](https://jekyllrb.com/) and [Pages Gem](https://github.com/github/pages-gem)
- Update gems and run bundler install

```sh
sudo apt-get install ruby ruby-dev`
sudo gem install jekyll bundler github-pages`
sudo gem update --system
bundler install
```

- Update the `_config.yml`

## Changing Themes

- Clone the theme
- Copy the following directories over to the site

```
_layouts
_includes
_sass
assets
```

## URL Setup

Base URL: `palmettostatebrewers.github.io`
Redirected to: `palmettostatebrewers.com`

- In domain registrar, update CNAME reference
- In REPO create the `CNAME` file
  `echo "palmettostatebrewers.com" > CNAME`
- Check in and wait for DNS update
