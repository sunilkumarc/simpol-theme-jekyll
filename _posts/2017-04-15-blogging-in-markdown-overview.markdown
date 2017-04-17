---
layout:     post
title:      "Simpol Blogging, Markdown Overview"
description: "How to write in markdown, blogging with Jekyll. A quick markdown overview."
date:       2017-04-15 17:00:00
author:     "Scott Mathson"
header-img: img/posts/header-img/desk-laptop.jpg
---

# H1
## H2
### H3
#### H4
##### H5

Markdown is a fairly simple language to comprehend. One of the greatest reference guides/resources that I've found, to-date, is [located here](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet). Read onward for more insight into basic Markdown characteristics.

Here's how the headings, above, came to be.

```
	# H1
	## H2
	### H3
	#### H4
	##### H5
```

---

_What about that ^ horizontal rule?_ Simple!

```
	Add 3 or more hyphens.

	---
```

---

Are you seeing the bolded and italicized text, throughout?

```
	To bold some text, simply add two **asterisks around the content**.

	Similarly, to italicize text, _add underscores around the content_.
```

To bold some text, simply add **asterisks around the content**.

Similarly, to italicize text, _add underscores around the content_.

---

Here's how we add the code/syntax highlighting throughout this post, in markdown.

```
	"```"
	For code blocks, add 3 back-ticks around the block, like so (eliminating the quotation marks, ending up solely with 3 back-ticks ```).
	"```"
```

```
	For code blocks, add 3 back-ticks around the block, without specifying a particular language.

	Simpol is intentionally kept light, no syntax highlighting add-ons included.

	<div class="example">
		<p>Hello world...</p>
	</div>
```

```
	For inline code, simply add back-ticks `around the code`.
```

For inline code, simply add back-ticks `around the code`.

---

Need to add links inline or throughout your post? Here's how!

```
	[inline link](https://mathsondesignco.com/simpol/)

	[inline link with title](https://mathsondesignco.com/simpol/ "Simpol Theme")

	Simply paste a link within angle brackets: <https://mathsondesignco.com/simpol/>
```

[inline link](https://mathsondesignco.com/simpol/)

[inline link with title](https://mathsondesignco.com/simpol/ "Simpol Theme")

Simply paste a link within angle brackets: <https://mathsondesignco.com/simpol/>

---

### Need to add imagery to your posts?

Check out the article on Simpol Theme's blog feed, [_Post with Images_, here]({{ site.baseurl }}/2017/04/13/blog-post-with-imagery/).

---

Learn more about writing posts in [Jekyll's docs, here](http://jekyllrb.com/docs/posts/).
