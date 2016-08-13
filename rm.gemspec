$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rm/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rm"
  s.version     = Rm::VERSION
  s.authors     = ["Shinichi Matsuda"]
  s.email       = ["matsu1983@gmail.com"]
  s.homepage    = "http:sample.com"
  s.summary     = "Summary of Rm."
  s.description = "Description of Rm."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", ">= 4.0.0"

  s.add_development_dependency "sqlite3"

  s.test_files = Dir["spec/**/*"]
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "factory_girl_rails"
end
