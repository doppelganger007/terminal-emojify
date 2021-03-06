# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'terminal/emojify/version'

Gem::Specification.new do |spec|
  spec.name          = "terminal-emojify"
  spec.version       = Terminal::Emojify::VERSION
  spec.authors       = ["Antonio Scandurra"]
  spec.email         = ["me@as-cii.com"]
  spec.summary       = %q{Outputs emoji aliases as raw characters.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "gemoji", "~> 2.1.0"
end
