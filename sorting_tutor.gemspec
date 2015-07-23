# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sorting_tutor/version'

Gem::Specification.new do |spec|
  spec.name          = "sorting_tutor"
  spec.version       = SortingTutor::VERSION
  spec.authors       = ["Dan Pickett"]
  spec.email         = ["dan.pickett@launchacademy.com"]

  spec.summary       = %q{A learning tool for sorting algorithms}
  spec.description   = %q{A CLI for learning sorting algorithms}
  spec.homepage      = "https://launchacademy.com"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]


  spec.add_dependency "thor"
  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "simplecov"
end
