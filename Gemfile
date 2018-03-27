source 'https://rubygems.org'

ruby '2.3.0'

gem 'rails',                   '~> 5.1.4'
gem 'bcrypt',         '3.1.11'
gem 'bootstrap-sass', '3.3.7'
gem 'puma',         '3.9.1'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2.2'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'

gem 'haml'
gem 'sdoc', '~> 0.4.0', group: :doc

group :development, :test do
  gem 'rspec-rails', '> 3.3.2'
  gem 'sqlite3'
  gem 'byebug', platform: :mri
end

group :development do
  gem 'web-console', '~> 2.0'
  gem 'listen',                '3.1.5'
  gem 'spring'
  gem 'spring-watcher-listen', '2.0.1'
end

group :test do
  gem 'database_cleaner', '~> 1.6', '>= 1.6.2'
  gem 'simplecov', :require => false
  gem 'cucumber-rails', :require => false
  gem 'cucumber-rails-training-wheels'
  gem 'rails-controller-testing', '1.0.2'
  gem 'minitest-reporters',       '1.1.14'
  gem 'guard',                    '2.13.0'
  gem 'guard-minitest',           '2.4.4'
end

group :production do
  gem 'pg' # for Heroku deployment
  gem 'rails_12factor'
end
