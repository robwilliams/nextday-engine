$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "nextday-engine/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "nextday-engine"
  s.version     = NextdayEngine::VERSION
  s.authors     = ["Robert Williams"]
  s.email       = ["rob@r-williams.com"]
  s.homepage    = "http://www.stinkyinkshop.co.uk"
  s.summary     = "Exposes the next day gem as a rails engine"
  s.description = "Exposes the next day gem as a rails engine, Provides /nextday.json, a few helpers and a javascript module."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.1.0"
  s.add_dependency "nextday", "~> 0.1.0"
  s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
