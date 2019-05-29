source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'rails', '~> 5.2.3'
gem 'devise'
gem 'devise-i18n'
gem 'rails-i18n'
gem 'uglifier', '>= 1.3.0'
gem 'twitter-bootstrap-rails'
gem 'jquery-rails'
gem 'font-awesome-rails'
gem 'carrierwave'
gem 'rmagick'
gem 'fog-aws'
gem 'sass-rails'
gem 'lightbox-bootstrap-rails', '5.1.0.1'

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

