$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "cucumber_json_api_steps/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "cucumber_json_api_steps"
  s.version     = CucumberJsonApiSteps::VERSION
  s.authors     = ["Gonzalo Bulnes Guilpain"]
  s.email       = ["gon.bulnes@gmail.com"]
  s.homepage    = "https://github.com/gonzalo-bulnes/cucumber_json_api_steps"
  s.summary     = "Some Cucumber steps to make easier to build JSON API with Rails."
  s.license     = "GPLv3"

  s.files = Dir["{app,config,db,lib}/**/*", "LICENSE", "Rakefile", "README.md"]

  s.add_dependency "cucumber-rails", "~> 1.4.0"

  s.add_development_dependency "aruba"
  s.add_development_dependency "cucumber-rails"
  s.add_development_dependency "database_cleaner"
  s.add_development_dependency "factory_girl_rails"
  s.add_development_dependency "sqlite3"
  # and 'dummier' from a Git source, see the Gemfile.
end
