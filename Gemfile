source 'https://rubygems.org'
ruby '2.0.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.1'


group :development, :test do
    # Use sqlite3 as the database for Active Record
    gem 'pg', '0.15.1'
    gem 'rspec-rails', '2.13.1'

    #dla guarda
    gem 'guard-rspec', '2.5.0'
    
    # okienka notyfikujące w linuxie dla guarda
    gem 'libnotify', '0.8.0'

    # serwer testów spork + 
    gem 'spork-rails', '4.0.0'
    gem 'guard-spork', '1.5.0'
    gem 'childprocess', '0.3.6'

    #do zapychania bazy danych przykladowymi danymi
    gem 'faker', '1.1.2'

    # do generowania mockow
    gem 'factory_girl_rails', '4.2.1'
end

group :test do
    gem 'selenium-webdriver', '2.35.1'
    gem 'capybara', '2.1.0'
end

# do używania funkcji skrótu
gem 'bcrypt-ruby', '3.1.2'

#paginate, samo za siebie
gem 'will_paginate', '3.0.4'
gem 'bootstrap-will_paginate', '0.0.9'

# Use SCSS for stylesheets
gem 'sass-rails', '4.0.1'

# bootstrap framework for CSS layout
gem 'bootstrap-sass', '2.3.2.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '2.1.1'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '4.0.1'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails', '3.0.4'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks', '1.1.1'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '1.0.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :production do
    gem 'pg', '0.15.1'
    gem 'rails_12factor','0.0.2'
    gem 'rails_log_stdout',           github: 'heroku/rails_log_stdout'
    
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
