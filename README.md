# Simpol Theme, RubyGem (simpol-jekyll-theme)

Simpol is a minimal, clean Jekyll theme for Github Pages.

>### Focus on the writing, the content.

[Demo](https://simpol-theme.github.io/simpol-theme-jekyll/)

[Fork](https://github.com/simpol-theme/simpol-theme-jekyll/fork) or [Download](https://github.com/simpol-theme/simpol-theme-jekyll/releases)

![Simpol Theme screenshots](https://raw.githubusercontent.com/simpol-theme/simpol-theme-jekyll/master/img/simpol-theme-screenshot.jpg)

### Features

* Minimal design and feel
* Clean, default layouts for pages and posts
* Head with optimized metadata (titles and descriptions)
* Simple Google Analytics integration: _simply input your tracking ID in config file_
* Single, yet powerful CSS Stylesheet (3 breakpoints/media queries)
* Sitemap and 404 Page
* Gems: Using Jekyll, Jekyll Paginate and Feed

### Installing

[Fork](https://github.com/simpol-theme/simpol-theme-jekyll/fork) or [Download](https://github.com/simpol-theme/simpol-theme-jekyll/releases)

In a folder that contains an empty Gemfile, run:

    $ gem install simpol-jekyll-theme

Then, add this line to your Jekyll site's `Gemfile`:

```ruby
gem "simpol-jekyll-theme", "1.0.3"
```

And then execute:

    $ bundle

Then, to explore the theme's folders and files (it comes with 3 blog posts, examples and instructions, an index page, 404 page, images, and more), run this command in your terminal:

```
On Mac:
  open $(bundle show simpol-jekyll-theme)
On Windows:
  explorer /usr/local/lib/ruby/gems/2.3.0/gems/simpol-jekyll-theme-1.0.3
```

Next, copy these files over to your original folder with the Gemfile (and now Gemfile.lock). *Start hacking away, creating your personal site, entering your information in the `_config.yml`, etc.*

To preview your site, `run bundle exec jekyll serve` and open your browser at http://localhost:4000.

#### Already have a Jekyll site ready?

Then, execute the Gem install above and add this line to your Jekyll site's `_config.yml`:

```yaml
theme: simpol-jekyll-theme
```

And then execute:

    $ bundle

Or you can simply clone or [fork the repo](https://github.com/simpol-theme/simpol-theme-jekyll/fork) or [Download](https://github.com/simpol-theme/simpol-theme-jekyll/releases).

`git clone https://github.com/simpol-theme/simpol-theme-jekyll.git`

**So many ways and options to get started!**

**Learn how truly simple it is to get started** [adding new posts with the Simpol Theme](https://simpol-theme.github.io/simpol-theme-jekyll/2017/04/16/writing-new-post/)

Enjoy!

---

### Next Steps

#### Config file

Checkout the `_config.yml` file at the root of the directory. Take the time to fill in your site's information here, it should end up looking like this.

```yaml
# Site settings
title: "Simpol Theme"
subtitle: "Focus on the writing, the content."
description: "Minimal Jekyll website theme for writers. Focus on the writing, the content."
baseurl: ""

# Index settings
greeting: "Hello, I'm Simpol."
subgreetingone: "Jekyll theme that's all about the content."
subgreetingtwo: "Minimal, clean, simple blogging."

google_tracking_id: UA-XXXXX-X

# Build settings
gems: [jekyll-paginate, jekyll-feed]

theme: simpol-jekyll-theme

markdown: kramdown
highlighter: rouge
permalink: pretty
paginate: 12
exclude: ["package.json","README.md"]
```

#### Index file (homepage)

Feel free to create a homepage similar to the one used in Simpol Theme's [live demo](https://simpol-theme.github.io/simpol-theme-jekyll/). It includes pagination for the blog feed along with the site's greeting, subgreetings, and logo image.

Here is what Simpol Theme's `index.html` looks like.

```html
---
layout: default
---

<div class="page-wrapper">
	<div class="inner-wrapper" id="mini-about">
		<div class="top-headline-photo">
			<div class="sm-1-col md-2-col lg-2-col pull-left">
				<h1>{% if site.greeting %}{{ site.greeting }}{% else %}{{ "Hello, I'm Simpol." }}{% endif %}
				</h1>
			</div><!-- end .sm-1-col lg-2-col pull-left -->
			<div class="sm-1-col md-2-col lg-2-col pull-right small-mobile-hide">
				<img src="{{ site.baseurl }}/img/simpol-logo-x800.jpg" alt="Simpol Theme">
			</div><!-- end. sm-1-col lg-2-col pull-right mobile-hide -->
		</div><!-- end .top-headline-photo -->

		<div class="sm-1-col md-2-col lg-2-col pull-left">
			<p>{% if site.subgreetingone %}{{ site.subgreetingone }}{% else %}{{ "Jekyll theme that's all about the content." }}{% endif %}
			</p>
		</div><!-- end .sm-1-col lg-2-col pull-left -->
		<div class="sm-1-col md-2-col lg-2-col pull-right">
			<p>{% if site.subgreetingone %}{{ site.subgreetingone }}{% else %}{{ "Minimal, clean, simple blogging." }}{% endif %}
			</p>
		</div><!-- end. sm-1-col lg-2-col pull-right -->
	</div><!-- end .inner-wrapper #mini-about -->

	<hr>

	<div class="inner-wrapper">
		<br>
		{% for post in paginator.posts %}
		<div class="post-preview">
			<div class="sm-1-col lg-onequarter-col pull-left">
				{% if post.header-img %}
					<a href="{{ post.url | prepend: site.baseurl }}" style="text-decoration:none;">
						<img class="post-header-img" src="{{ site.baseurl }}/{{ post.header-img }}" alt="Simpol Theme">
					</a>
				{% endif %}
			</div><!-- end .sm-1-col lg-onequarter-col pull-left -->
			<div class="sm-1-col lg-threequarter-col inline-block">
				<a href="{{ post.url | prepend: site.baseurl }}">
					<h2>{{ post.title }}</h2>
				</a>
				{% if post.description %}
					<h4>{{ post.description }}</h4>
				{% endif %}
				<div class="sm-1-col lg-2-col pull-left">
					<p class="mono smaller">Published on {{ post.date | date: "%B %-d, %Y" }}
						<br>
						By {{ post.author }}
					</p>
				</div><!-- end .sm-1-col lg-2-col pull-left -->
				<div class="sm-1-col lg-2-col inline-block">
					<a href="{{ post.url | prepend: site.baseurl }}">
						<p class="post-cta btn-primary">Read more</p>
					</a>
				</div><!-- end .sm-1-col lg-1-col inline-block -->
			</div><!-- end .sm-1-col lg-threequarter-col inline-block -->
		</div><!-- end .post-preview -->
		{% endfor %}

		{% if paginator.total_pages > 1 %}
		<div class="pager">
	    {% if paginator.previous_page %}
        <a href="{{ paginator.previous_page_path | prepend: site.baseurl | replace: '//', '/' }}" class="previous btn-primary">&larr; Newer Posts</a>
	    {% endif %}
	    {% if paginator.next_page %}
        <a href="{{ paginator.next_page_path | prepend: site.baseurl | replace: '//', '/' }}" class="btn-primary">Older Posts &rarr;</a>
	    {% endif %}
		</div><!-- end .pager -->
		{% endif %}
	</div><!-- end .inner-wrapper -->
</div><!-- end .page-wrapper -->
```

#### Misc. (Navigation and Footer)

It's recommended that you spend time customizing the links in the `nav.html` file in the `_includes` folder to link out to where you want them to go. Or omit/leave those blank, all together.

You'll see the custom classes and CSS that's been written for the footer links on mobile devices, it's recommended that you update the `footer.html` in `_includes` with your relevant links and copyright info, as well.

---

### Credits

Simpol Theme is designed, developed, and maintained by Scott Mathson, Mathson Design Co. **This theme has been developed for independent makers. If you're using this for commercial usage, or if you're simply enjoying your new website theme, I'd greatly appreciate it if you'd [support the maker behind it](https://www.paypal.me/mathson/20)**.

The clean design and feel is inspired by other minimal themes and blogs out there.

[Scott on GitHub](https://github.com/scottdesdev) | [Scott on Twitter](https://twitter.com/scottmathson)

---

### Sites Using Simpol Theme

(or slight variations, thereof)

* [scottmathson.me](https://scottmathson.me "Scott Mathson, Web Designer & Developer, personal website")

### Resources

Check out these blog posts for help in getting started blogging with Simpol Theme. Within the posts are even more resources to help you.

* [Adding New Posts, Simpol Blogging](https://simpol-theme.github.io/simpol-theme-jekyll/2017/04/16/writing-new-post/)
* [Markdown Overview, Simpol Blogging](https://simpol-theme.github.io/simpol-theme-jekyll/2017/04/15/blogging-in-markdown-overview/)
* [Deploy Jekyll to GitHub Pages](https://jekyllrb.com/docs/github-pages/)

---

[![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://www.paypal.me/mathson/20)


> *Copyright 2017 Mathson Design, LLC and Scott Mathson*
