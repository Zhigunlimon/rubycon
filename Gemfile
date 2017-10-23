source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.3'
gem 'sqlite3'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'figaro'

gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'slim-rails', '~> 3.1', '>= 3.1.1'
gem 'bootstrap', '~> 4.0.0.beta'
gem 'jquery-rails'
gem 'font-awesome-rails'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  gem 'webmock'
  gem 'capybara', '~> 2.13'
  gem 'rspec-rails', '~> 3.6'
  gem 'faker', '~> 1.8', '>= 1.8.4'
  gem 'factory_girl_rails', '~> 4.8'
  gem 'shoulda-matchers', '~> 3.1', '>= 3.1.2'
  gem 'database_cleaner', '~> 1.5', '>= 1.5.1'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

#need for pretty console outputs (use 'ap' intead of 'puts')
gem 'awesome_print'
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
