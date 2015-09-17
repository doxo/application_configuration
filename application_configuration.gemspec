# -*- encoding: utf-8 -*-
$LOAD_PATH.push File.expand_path("../lib", __FILE__)
require "application_configuration/version"

Gem::Specification.new do |s|
  s.name        = "application_configuration"
  s.version     = ApplicationConfiguration::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = %w(doxo)
  s.email       = %w(dev@doxo.com)
  s.summary     = %q{Configuration from YAML files.}
  s.description = %q{Application level configuration that supports YAML config file, inheritance, ERB, and object member notation. Also supports per-developer settings and Railties.}

  s.required_rubygems_version = ">= 1.8.6"

  s.files       = Dir.glob('{lib,test}/**/*.rb')
  s.test_files  = Dir.glob('{test}/**/*.rb')

  s.require_paths = ['lib']

  s.add_development_dependency('bundler', "~> 1.0")
  s.add_development_dependency('rr')
  s.add_development_dependency('rake', "~> 10.0")
end
