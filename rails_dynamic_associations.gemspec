$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'rails_dynamic_associations/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
	s.name        = 'rails_dynamic_associations'
	s.version     = RailsDynamicAssociations::VERSION
	s.authors     = [ 'Alexander Senko' ]
	s.email       = [ 'Alexander.Senko@gmail.com' ]
	s.homepage    = 'https://github.com/softpro/rails_dynamic_associations'
	s.summary     = 'DB-driven model associations for Rails.'
	s.description = 'Define your model associations in the database without changing the schema or models.'
	s.license     = 'MIT'

	s.files = Dir['{app,config,db,lib}/**/*'] + ['MIT-LICENSE', 'Rakefile', 'README.md']

	s.add_dependency 'rails', '>= 5.0.0.beta'
	s.add_dependency 'rails_model_load_hook'

	s.add_development_dependency 'sqlite3'
end
