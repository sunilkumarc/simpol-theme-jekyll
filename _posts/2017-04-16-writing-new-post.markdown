---
layout:     post
title:      "Simpol Blogging, Adding New Posts"
description: "How to add your first post. Simpol Theme blogging overview."
date:       2017-04-16 17:00:00
author:     "Scott Mathson"
header-img: img/posts/header-img/woman-typing-macbook.jpg
---

# Simpol Blogging: Creating Your Post

After [downloading the latest release of Simpol Theme](https://github.com/simpol-theme/simpol-theme-jekyll/releases), you'll see the folder and files structure to be clean, consistent, and simple to understand.

All of the blog posts that syndicate into the homepage (index.html) feed and Sitemap are located within the `_posts` folder.

**It's easy to add new posts**.

1. Create a new file in the `_posts` folder
2. Name the file, using this naming convention: `YYY-MM-DD-post-name.markdown` (_or .md_)
3. Write out the Front Matter (see below)

As for the Front Matter, Simpol Theme incorporates and includes a few options. _Always ensure that your file's date and front matter date match up_. **Although highly recommended**, things like the `description` `author` and `header-img` are completely optional.

**`layout` `date` and `title` should not be considered optional**.

### Example: This Post's Front Matter:

```
	---
	layout:     post
	title:      "Writing a New Post"
	description: "Let's talk about blogging with Jekyll, in markdown, with the Simpol Theme."
	date:       2017-04-16 17:00:00
	author:     "Scott Mathson"
	header-img: img/woman-typing-macbook.jpg
	---
```
