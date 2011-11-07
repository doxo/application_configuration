# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "application_configuration/version"

Gem::Specification.new do |s|
  s.name        = "application_configuration"
  s.version     = ApplicationConfiguration::VERSION
  s.authors     = ["Andy Hartford", "Christopher J Bottaro"]
  s.email       = ["dev@doxo.com"]
  s.homepage    = ""
  s.summary     = %q{Configuration from YAML files.}
  s.description = %q{Application level configuration that supports YAML config file, inheritance, ERB, and object member notation. Also supports per-developer settings and Railties.}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
