# coding: utf-8
# frozen_string_literal: true
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "rubocop/defaults/version"

Gem::Specification.new do |spec|
  spec.name          = "rubocop-defaults"
  spec.version       = Rubocop::Defaults::VERSION
  spec.authors       = ["Andreas Eger"]
  spec.email         = ["andreas.eger@runtastic.com"]
  spec.summary       = "rubocop defaults used at runtastic"
  spec.description   = "rubocop defaults used at runtastic"
  spec.license       = "MIT"
  spec.homepage      = "https://github.com/runtastic/rubocop-defaults"
  spec.required_ruby_version = "~> 2.2"

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rubocop", "~> 0.46"
  spec.add_dependency "rubocop-rspec", "1.7"
  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
end
