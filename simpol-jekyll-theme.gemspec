# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "simpol-jekyll-theme"
  spec.version       = "1.0.1"
  spec.authors       = ["Scott Mathson"]
  spec.email         = ["scottmathson@gmail.com"]

  spec.summary       = %q{Jekyll theme that's all about the content. Minimal, clean, simple blogging.}
  spec.homepage      = "https://scottmathson.me/simpol/"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r{^(assets|_layouts|_includes|_posts|img|LICENSE|README|feed)}i) }

  spec.add_runtime_dependency "jekyll", "~> 3.4.3"
  spec.add_runtime_dependency "jekyll-paginate", "~> 1.1.0"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.9.2"

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
end
