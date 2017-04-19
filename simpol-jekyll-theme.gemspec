# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "simpol-jekyll-theme"
  spec.version       = "1.0.3"
  spec.authors       = ["Scott Mathson"]
  spec.email         = ["scottmathson@gmail.com"]

  spec.summary       = %q{Focus on the writing, the content.}
  spec.description   = "Jekyll theme that's all about the content. Minimal, clean, simple blogging."
  spec.homepage      = "https://simpol-theme.github.io/simpol-theme-jekyll/"
  spec.license       = "ISC"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r{^(assets|_layouts|_includes|_posts|img|_config.yml|404.html|sitemap.xml|index.html|LICENSE|README)}i) }

  spec.add_runtime_dependency "jekyll", "~> 3.4", "~> 3.4.3"
  spec.add_runtime_dependency "jekyll-paginate", "~> 1.1", "~> 1.1.0"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.9.2"

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
end
