source 'https://rubygems.org'

gem "pundit"

gem 'sprockets', '3.6.3'

gem 'factory_bot_rails'

gem 'awesome_print', require: 'ap'

gem 'dotenv-rails', groups: [:development, :test]

gem 'rspec-rails', '~> 3.6'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.2'
# Add carrierwave to help for cloudinary
gem 'carrierwave'
# Utils for carrierwave
gem 'rmagick', '~> 2.16.0'
# Use cloudinary for Image Storage
gem 'cloudinary'
# Use sqlite3 as the database for Active Record
# gem 'sqlite3'

# Use Mysql as the database for Active Record
# Use Puma as the app server
gem 'puma', '~> 3.6'
# Use Stylus for stylesheets
gem 'stylus'
# Stylus dependence
gem 'tilt'

gem 'redcarpet', '~> 3.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Using Devise for authentication
gem "devise"
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
    # Call 'byebug' anywhere in the code to stop execution and get a debugger console
    gem 'byebug', platform: :mri

    gem 'sqlite3'
    gem 'ffaker'
end

group :test do
    gem 'rspec-rails', '~> 3.6'
    gem 'ffaker'
    gem 'factory_bot_rails'
    gem "shoulda-matchers"
end

group :development do
    # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
    gem 'web-console'
    gem 'listen', '~> 3.0.5'
    # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
    gem 'spring'
    gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

group :production do
    gem 'rails_12factor'
    gem 'pg'
end