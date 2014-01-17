Encoding.default_external = Encoding::UTF_8
Encoding.default_internal = Encoding::UTF_8

source 'https://rubygems.org'

gem 'sinatra', require: 'sinatra/base'
gem 'sinatra-contrib', require: 'sinatra/json'
gem 'puma'
gem 'thin'
gem 'rake'
gem 'rack'
gem 'activesupport'
gem 'yajl-ruby', require: 'yajl/json_gem'
gem 'multi_json'
gem "mongoid", "~> 3.1.6"
gem 'mongoid-tree', require: 'mongoid/tree'
gem 'mongoid_auto_increment'
gem 'bson_ext'
gem 'bcrypt-ruby', require: 'bcrypt'
gem 'pony'
gem 'state_machine'
gem 'whenever', :require => false
# gem "searchkick", github: "ankane/searchkick"
gem 'geocoder'
gem 'nokogiri'

group :development do
  gem 'ruby-graphviz', :require => 'graphviz'
  gem 'foreman'
  gem 'better-errros'
  gem 'binding_of_caller'
end

group :test do
  gem 'rspec'
  gem "mongoid-rspec", "~> 1.9.0"
  gem 'rack-test'
  gem 'fivemat'
  gem 'simplecov'
  gem 'timecop'
end
