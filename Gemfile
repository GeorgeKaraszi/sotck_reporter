source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.1'

gem 'pg'

gem 'sidekiq'
gem 'rollbar'
gem 'interactor-rails'
gem 'money-rails'
gem 'rails-timeago'

gem 'good_migrations'
gem 'has_scope'
gem 'kaminari'

# Use Puma as the app server
gem 'puma', '~> 3.0'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem 'rack-cors'

# gem "devise"

# Extra usfull gems
# gem "aasm"

# gem "parallel"

# Environment Variables
gem 'dotenv-deployment'
gem 'dotenv-rails'

group :development, :test, :staging do
  gem 'faker'
  gem 'factory_girl_rails'
end

group :development do
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  gem 'lol_dba'
  gem 'pickler'

  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'rack-mini-profiler'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  gem 'rspec-rails'

  gem 'brakeman'
  gem 'rubocop', require: false

  gem 'pry-nav'
  gem 'pry-rails'
  gem 'pry-theme'

  gem 'guard-brakeman'
  gem 'guard-rails'
  gem 'guard-rspec'
  gem 'parallel_tests'
end

group :test do
  gem 'codeclimate-test-reporter', require: nil
  gem 'database_cleaner'
  gem 'factis'
  gem 'fuubar'
  gem 'poltergeist'
  gem 'rspec-instafail'
  gem 'rspec-its'
  gem 'rspec-retry'
  gem 'rspec-wait'
  gem 'selenium-webdriver'
  gem 'shoulda-matchers'
  gem 'simplecov', require: false
  gem 'toady'
  gem 'vcr'
  gem 'webmock'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
