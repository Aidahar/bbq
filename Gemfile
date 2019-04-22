source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'rails', '~> 5.2.3'
gem 'devise'
gem 'uglifier', '>= 1.3.0'
gem 'twitter-bootstrap-rails'
gem 'jquery-rails'

group :production do
 gem 'pg'
end

group :development, :test do
  gem 'sqlite3', '~> 1.3.6'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'listen'
end

