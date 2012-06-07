$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails-sandbox-busterjs/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails-sandbox-busterjs"
  s.version     = RailsSandboxBusterjs::VERSION
  s.authors     = ["Rodrigo Rosenfeld Rosas"]
  s.email       = ["rr.rosas@gmail.com"]
  s.homepage    = "http://github.com/rosenfeld/rails-sandbox-busterjs"
  s.summary     = "Buster.js test runner for Rails Sandbox Assets plugin"
  s.description = %q{Run your Buster.js tests/specs taking full advantage of the Rails Assets Pipeline}

  s.files = Dir["{app,lib,vendor}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails-sandbox-assets"
end
