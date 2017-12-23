# PSB Technical Support

This README is a brief summary of all the duties required to maintain and support the **Palmetto State Brewers Club** 
website and related technologies. These are the primary duties of the **VP of Communication**. Any additional
notes and duties should be captured here as needed.

## Updating Website and Creating Posts

The easiest way to update the website is to create a Github account, navigate to the repository,
browse for the file in question, and edit that file. For example, to update the list of officers,
either navigate to the file `officers.html`, then use the in-browser editor to make the needed changes.

## Documentation

- Current and past theme's documentations/examples should kept in the `docs/` directory
- Include any additional notes and files there

## Archive

Most every file created for the old site is available in the `archive` directory 
(either as is or zipped up). These files can be freely distributed.

Included in the archive is the last snapshot of the forum, `psb_form.zip`. This is a
full website dump created by [HTTrack](https://www.httrack.com/). This software crawls
a site domain and downloads all the HTML, CSS, and images. This archive is a full
functional offline version of the forum at the time of the backup.

## Project Setup

- Install `git-lfs` (large file system) https://git-lfs.github.com/
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

### Testing locally

To test website changes on a local machine before submitting for review, use `git clone` to get the code.
Then install all the packages. Use the script `dserve.sh` to start a local jekyll watch instance.

### Changing Themes

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
