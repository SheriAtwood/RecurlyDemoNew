source 'https://rubygems.org'

gem 'rails', '3.2.7'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'json'
gem 'recurly', '~> 2.2.1'
gem 'bcrypt-ruby', '3.0.1'
gem 'bundler', '1.5.3'
gem 'therubyracer'

group :development do
  gem 'nokogiri',      '~> 1.5.0', :group     => :test
  gem 'jruby-openssl', '~> 0.7.4', :platforms => :jruby # For WebMock.

  gem 'redcarpet',                 :platforms => :ruby
  gem 'yard'
  gem 'rubysl',                    :platforms => :rbx
  gem 'rubysl-resolv', '~> 2.0',   :platforms => :rbx
  gem 'racc',                      :platforms => :rbx
	gem 'sqlite3'
	gem 'rspec-rails', '2.10.0'
	gem 'guard-rspec', '0.5.5'
end

group :production do
	gem 'pg' , '0.12.2'
end

gem 'rails_12factor', group: :production

# Gems used only for assets and not required
# in production environments by default.
group :assets do

  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '1.2.3'
end

gem 'jquery-rails'

