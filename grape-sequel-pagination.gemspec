# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'grape/sequel-pagination/version'

Gem::Specification.new do |spec|
  spec.name          = 'grape-sequel-pagination'
  spec.version       = Grape::SequelPagination::VERSION
  spec.authors       = ['Karol JG']
  spec.email         = ['akemrir@gmail.com']
  spec.description   = %q{Sequel pagination helpers for Grape}
  spec.summary       = %q{Sequel pagination helpers for Grape}
  spec.homepage      = 'https://github.com/remind101/grape-sequel-pagination'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'grape', '~> 1.2.3'
  spec.add_dependency 'addressable'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rack-test'
end
