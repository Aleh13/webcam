source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'


gem 'bootsnap', require: false
gem 'bootstrap', '~> 4.4.1'
gem 'rails', '~> 6.0.3', '>= 6.0.3.6'
gem 'pg'
gem 'puma', '~> 4.1'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 4.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
gem 'mimemagic', '0.3.10'


group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'database_cleaner'
  gem 'faker'
  gem 'pry-rails'
  gem 'rails-controller-testing'
  gem 'rspec-core',         git: 'https://github.com/rspec/rspec-core'
  gem 'rspec-expectations', git: 'https://github.com/rspec/rspec-expectations'
  gem 'rspec-mocks',        git: 'https://github.com/rspec/rspec-mocks'
  gem 'rspec-rails',        git: 'https://github.com/rspec/rspec-rails'
  gem 'rspec-support',      git: 'https://github.com/rspec/rspec-support'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'factory_bot_rails'
  gem 'rubocop', require: false
  gem 'shoulda-matchers'
end


gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
