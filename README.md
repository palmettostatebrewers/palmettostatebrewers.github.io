# PSB Technical Support

This README is a brief summary of all the duties required to maintain and support the **Palmetto State Brewers Club** 
website and related technologies. These are the primary duties of the **VP of Communication**. Any additional
notes and duties should be captured here as needed.

## Updating Website Content

In general, all the updating of page content or creation of new posts can be done from the Github website.

The URL to the repository (the place where all the code is kept and versioned) is at 
[](https://github.com/palmettostatebrewers/palmettostatebrewers.github.io). 

### Setup

- Web Browser - any will do
- A Github account
  - https://github.com/join 
  - This is free and easy
  - You can skip all the questions during setup
  - Each person should have their own account
  - This way we can track who changed what and when
  - Prefix the user name with "PSB" so it is easy to find
  
- Have the VP of Communication give new user "write access"
  - This has to be done before you can make edits to the

- Navigate to the repository URL (see above)

(Note the VP of Communications will need to add or remove accounts as needed).

### Creating a New Posts

- Before creating a post, upload all your images/files for the post
   - Do the first step in the next section
   - (If you forget, you can always do it later and edit the post)

- When adding a new post, click the `_posts` folder icon
  - Click the "Create new file" button
  - Name the file (make sure to follow the rules in the "Posts" section)
  - Add the content

- After Completing Your Changes
  - At the top of the editor are 2 tabs "Edit" and "Preview"
  - Use the "Preview tab" to verify the formatting of the text
  - Once changes are done, at the bottom is field for "Commit changes"
  - Always give a good name and description to your changes
  - Always select the "Create a new branch for this commit and start a pull request" button
  - Press "Commit changes"

- This will create what is called a "Pull Request", and show you what has changed

- Once everything is complete and all reviews are done
  - Press the "Merge Pull Request" button at the bottom.

### Adding Pictures or Files to Posts

- Upload images to the `_posts/images/` folder
  - Click the "Upload Files" button
  - Follow the instructions in the page to upload files
  - After adding everything, commit just like above.
  - **Replace any spaces or symbols in the file name with dashes or underscores**

- Start creating the post and add content

- Once ready add the images by copying and pasting in the line below
   - Replace the `image.png` with the name of the file you want to use
   - Replace the `Preview Text` with a simple description of the image/file
   
```
![Preview Text](https://raw.githubusercontent.com/palmettostatebrewers/palmettostatebrewers.github.io/master/_posts/images/image.png)
```

### Posts

A post is a simple text file (formatted with something called "Github-flavored Markdown", Github
has a bunch of good tutorials on it). Simply add the text of your post and save and it will 
be added to the site. Nothing fancy to worry about!

The only requirements is that the name of the file has to follow these rules:

- Start with the date in the format of `year-month-day`
- Followed by the title of the post (replace any spaces with dashes "-")
- And ending with an extension of `.md`

For example: `2018-02-01-Febuary-Brew-Session.md`

Paste following to the top of the file (this is called the header). Update information such as 
the title and the tags:

```
---
layout: post
title: "Febuary Brew Session"
categories:
  - brewsession
tags:
  - brewsession
---
```

## Updating Existing Pages


- If updating an existing page (such as the **Officers** page)
  - Click on the file you want to edit
  - On the right side there is a pencil icon beside the trash can
  - Click that, and make the needed changes

### Issue Tracking

Github's included issue tracking system allows for easy communication of ideas and history
tracking of club decisions. This simple system allows each officer to post a new issue
and to comment on any issue. Once commented, each participate will be sent an email 
and can then respond as needed.


## Documentation

- Current and past theme's documentations/examples should kept in the `docs/` directory
- Include any additional notes and files there
- This will include club documents such as the "By-Laws"


## Domain Name and Club Email Account

The domain name and email mailboxes are managed under a https://godaddy.com account.

- Contact information should be set to the PO Box address
  - Domain contact information should be the same.

- Payments for the domain name and email forwards should be made through the PayPal account
  - The PayPal must keep enough money in the account to handle renewals (~$13)

- Primary mailbox is <psb@palmettostatebrewers.com>
  - Set to forward to VP of Communication's and President's personal email

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
Forwarded to: `palmettostatebrewers.com`

- Login to godaddy.com account
- Go to "My Products" -> "Domains" -> "DNS"
- Scroll to bottom of page
- Edit "Forwarding" field
  - Forward Type: "Permanent (301)"
  - Settings: "Forward Only"
  - Check "Update my nameservers and DNS settings to support this change."
  - Add a subdomain forwarding for "wwww" to the same address
- Save


Tech Support: (480) 505-8877
