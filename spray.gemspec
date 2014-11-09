# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'spray/version'

Gem::Specification.new do |spec|
  spec.name          = 'spray'
  spec.version       = Spray::VERSION
  spec.authors       = ['Gabe Blair']
  spec.email         = ['gabe@castironcoding.com']
  spec.summary       = 'CLI feedback facilitator'
  spec.description   = 'Highline wrapper with some basic shortcuts'
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(/^bin\//) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(/^(test|spec|features)\//)
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'guard-rubocop', '~> 1.1'

  spec.add_runtime_dependency 'highline', '~> 1.6'
end
