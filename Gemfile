source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.0'
# Use postgresql as the database for Active Record
gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development

group :test, :development do
  gem "rspec-rails"
  gem "jasmine-core", github: 'pivotal/jasmine'
  gem "jasmine", github: 'pivotal/jasmine-gem'
end

group :test do
  gem "factory_girl_rails"
  gem "capybara"
  gem "poltergeist"
  gem "guard-rspec"
  gem "rb-fsevent"
  gem "shoulda-matchers"
  gem "database_cleaner"
end

gem "faker"
gem 'coveralls', require: false

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

gem 'omniauth-twitter'
gem 'twitter'

# Rack::Cors: support for Cross-Origin Resource Sharing (CORS).
# The CORS spec allows web applications to make cross domain
# AJAX calls without using workarounds such as JSONP.
gem 'rack-cors', :require => 'rack/cors'

# For Heroku
gem 'rails_12factor', group: :production
