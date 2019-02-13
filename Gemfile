source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'rails', '~> 5.2.0'
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'bulma-rails', '~> 0.6.1'
gem 'simple_form', '~> 4.0', '>= 4.0.1'
gem 'gravatar_image_tag', '~> 1.2'
gem 'devise', '~> 4.4', '>= 4.4.3'
gem 'omniauth-google-oauth2', '~> 0.5.3'
gem 'activerecord-session_store', '~> 1.1', '>= 1.1.1'
gem 'social-share-button', '~> 1.1'


group :production do
  gem 'pg', '0.20.0'
end


group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails', '~> 3.8'
end

group :development do
  gem 'sqlite3'
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'better_errors', '~> 2.4'
  gem 'guard', '~> 2.14', '>= 2.14.2'
  gem 'guard-livereload', '~> 2.5', require: false
  gem 'dotenv', '~> 2.5'
end

group :test do
  gem 'capybara', '>= 2.15', '< 4.0'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
