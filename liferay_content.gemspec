# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "liferay_content/version"

Gem::Specification.new do |s|
  s.name        = "liferay_content"
  s.version     = LiferayContent::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Fabrice Clari"]
  s.email       = ["fabrice@nooblee.fr"]
  s.homepage    = ""
  s.summary     = %q{liferay_content provides access in Ruby to Liferay contents}
  s.description = %q{to be completed}

  s.rubyforge_project = "liferay_content"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.add_development_dependency "rspec", "~> 2.0.0.beta.22"
end
