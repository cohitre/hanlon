# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "hanlon/version"

Gem::Specification.new do |s|
  s.name        = "hanlon"
  s.version     = Hanlon::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['cohitre']
  s.email       = ['i@cohitre.com']
  s.homepage    = ""
  s.summary     = %q{Define rails helpers with Haml}
  s.description = %q{Use Haml to generate rails helpers.}

  s.rubyforge_project = "hanlon"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency 'rspec'
  s.add_dependency 'haml'
end
