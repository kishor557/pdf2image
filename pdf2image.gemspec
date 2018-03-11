# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pdf2image/version'

Gem::Specification.new do |spec|
  spec.name          = "pdf2image"
  spec.version       = Pdf2image::VERSION
  spec.authors       = ["Venkat"]
  spec.email         = ["venkat.07557@gmail.com"]

  spec.summary       = %q{Converts pdf to image}
  spec.description   = %q{pdf2image accepts pdf file path as input and converts into a jpeg image}
  spec.homepage      = "https://github.com/kishor557/pdf2image"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'rmagick', '~> 2.10', '>= 2.10.0'
end
