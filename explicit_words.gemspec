# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'explicit_words/version'

Gem::Specification.new do |spec|
  spec.name          = 'explicit_words'
  spec.version       = ExplicitWords::VERSION
  spec.platform      = Gem::Platform::RUBY

  spec.summary       = 'A ruby library for dealing with explicit words'
  spec.description   = 'A ruby library for dealing with content that may have explicit words in it.'
  spec.homepage      = 'https://github.com/jyunderwood/explicit_words'
  spec.license       = 'MIT'

  spec.authors       = ['Jonathan Underwood']
  spec.email         = ['jonathan@jyunderwood.com']

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
end
