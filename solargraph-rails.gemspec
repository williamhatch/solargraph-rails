$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "solargraph/rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "solargraph-rails"
  s.version     = Solargraph::Rails::VERSION
  s.authors     = ["Fred Snyder"]
  s.email       = ["fsnyder@castwide.com"]
  s.homepage    = "http://solargraph.org"
  s.summary     = "A mountable Rails engine for Solargraph"
  s.description = "A mountable Rails engine for Solargraph"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5", ">= 5.1.1"
  s.add_dependency 'solargraph'

  s.add_development_dependency "sqlite3"
end
