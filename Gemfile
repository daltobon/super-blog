source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'friendly_id'
gem 'rails', '~> 5.1.6'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'devise'
gem 'better_errors', '~> 2.4'
gem 'bulma-rails', '~> 0.6.1'
gem 'simple_form', '~> 4.0', '>= 4.0.1'
gem "paperclip", "~> 6.0.0"
gem 'aws-sdk'
gem 'redcarpet', '~> 3.4.0'
gem 'rails-i18n'
gem 'will_paginate'
gem 'will_paginate-bulma'


group :development, :test do
 
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
  gem 'aws-sdk'
end

group :production do
  gem 'pg'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'aws-sdk'
  gem 'sqlite3', '~>1.3.13'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'guard', '~> 2.14', '>= 2.14.2'
  gem 'guard-livereload', '~> 2.5', '>= 2.5.2', require: false
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]