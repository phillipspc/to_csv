$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "to_csv/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "to_csv"
  s.version     = ToCsv::VERSION
  s.authors     = ["Peter Phillips"]
  s.email       = ["peter.phillips@rtslabs.com"]
  s.homepage    = "https://github.com/phillipspc/to_csv"
  s.summary     = "Easily generate CSVs from your records."
  s.description = "Easily generate CSVs from your records."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.2.1", ">= 5.2.1.1"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "pry-rails"
end
