$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'daimon_news/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'daimon_news'
  s.version     = DaimonNews::VERSION
  s.authors     = ['Ryunosuke SATO']
  s.email       = ['tricknotes.rs@gmail.com']
  s.homepage    = ''
  s.summary     = ''
  s.description = ''
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.rdoc']
  s.test_files = Dir['test/**/*']

  s.add_dependency 'rails', '~> 4.2.4'

  s.add_development_dependency 'sqlite3'
end
