source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.4'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 6.1.4', '>= 6.1.4.4'
# Use postgresql as the database for Active Record
gem 'pg', '~> 1.1'
# Use Puma as the app server
gem 'puma', '~> 5.0'
# Use Active Model has_secure_password
gem 'faraday'
gem 'bcrypt', '~> 3.1.7'
gem 'dotenv-rails', '~> 2.7', '>= 2.7.6' # https://rubygems.org/gems/dotenv-rails
gem 'jsonapi-serializer', '~> 2.2' # https://rubygems.org/gems/jsonapi-serializer
gem 'jwt', '~> 2.3' # https://rubygems.org/gems/jwt
gem 'rswag' # https://rubygems.org/gems/rswag
gem 'rswag-api' # https://rubygems.org/gems/rswag-api
gem 'rswag-ui' # https://rubygems.org/gems/rswag-ui


# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem 'rack-cors'

group :development, :test do
  gem 'annotate', '~> 3.0', '>= 3.0.3' # https://rubygems.org/gems/annotate
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'factory_bot_rails', '~> 5.1', '>= 5.1.1' # https://rubygems.org/gems/factory_bot_rails
  gem 'pry-byebug', '~> 3.9', platform: :mri # https://rubygems.org/gems/pry-byebug
  gem 'pry-rails', '~> 0.3.9' # https://rubygems.org/gems/pry-rails
  gem 'rspec-rails', '~> 4.1' # https://rubygems.org/gems/rspec-rails
  gem 'rswag-specs' # https://rubygems.org/gems/rswag-specs

end

group :development do
  gem 'listen', '~> 3.3'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'annotate', '~> 3.0', '>= 3.0.3' # https://rubygems.org/gems/annotate
  gem 'brakeman', '~> 5.1', '>= 5.1.2' # https://rubygems.org/gems/brakeman
  gem 'listen', '~> 3.3' # https://rubygems.org/gems/listen
  gem 'rails_best_practices', '~> 1.20' # https://rubygems.org/gems/rails_best_practices
  gem 'rubocop', require: false # https://rubygems.org/gems/rubocop
  gem 'rubocop-performance', require: false # https://rubygems.org/gems/rubocop-performance
  gem 'rubocop-rails', require: false # https://rubygems.org/gems/rubocop-rails
  gem 'rubocop-rspec', require: false # https://rubygems.org/gems/rubocop-rspec
end

group :test do
  gem 'faker', '~> 2.13' # https://rubygems.org/gems/faker
  gem 'shoulda-matchers', '~> 4.1', '>= 4.1.2' # https://rubygems.org/gems/shoulda-matchers
  gem 'simplecov', '~> 0.13.0', require: false # https://rubygems.org/gems/simplecov
end


# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
