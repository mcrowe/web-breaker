$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "web_breaker/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "web_breaker"
  s.version     = WebBreaker::VERSION
  s.authors     = ["Mitch Crowe"]
  s.email       = ["example@test.com"]
  s.homepage    = "https://github.com/mcrowe/web-breaker"
  s.summary     = "A breaker switch for the external services of a Rails application."
  s.description = "A breaker switch for the external services of a Rails application."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.12"
  s.add_dependency 'haml', ['>= 3.0.0']
  s.add_dependency 'simple_form', ['~> 2.0.4']
  s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
