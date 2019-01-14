# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

# Server
gem 'puma', '~> 3.11'
gem 'rails', '~> 5.2.1'

# Database
gem 'annotate'
gem 'pg'
gem 'sqlite3'

# Perf
gem 'bootsnap', '>= 1.1.0', require: false
gem 'turbolinks', '~> 5'

# Assets
gem 'bootstrap'
gem 'coffee-rails', '~> 4.2'
gem 'font-awesome-rails'
gem 'haml'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'

group :development, :test do
  # Debug
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'pry-rails'
end

group :development do
  # linters
  gem 'overcommit', require: false
  gem 'rubocop', require: false

  # debug
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'web-console', '>= 3.3.0'

  # cache
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'rails-controller-testing'
  gem 'rspec-rails'
  gem 'shoulda-matchers', '>= 4.0.0.rc1', require: false
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
