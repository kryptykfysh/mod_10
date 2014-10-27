# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mod_10/version'

Gem::Specification.new do |spec|
  spec.name          = "mod_10"
  spec.version       = Mod10::VERSION
  spec.authors       = ["Kryptyk Fysh"]
  spec.email         = ["kryptykfysh@kryptykfysh.co.uk"]
  spec.summary       = %q{Generates mod10 check digits and checks if values already are valid mod10.}
  spec.description   = File.read('README.md')
  spec.homepage      = "https://github.com/kryptykfysh/mod_10"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
