# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hasselhoff/version'

Gem::Specification.new do |spec|
  spec.name          = 'hasselhoff'
  spec.version       = Hasselhoff::VERSION
  spec.authors       = ['Boris Bügling']
  spec.email         = ['boris@buegling.com']
  spec.summary       = 'Hoff up your desktop.'
  spec.homepage      = 'https://github.com/neonichu/hasselhoff'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(/^bin/) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(/^(test|spec|features)/)
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
end
