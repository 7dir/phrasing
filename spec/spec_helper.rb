ENV["RAILS_ENV"] = 'test'
require File.expand_path("../dummy/config/environment.rb", __FILE__)
require 'rspec/rails'
require 'capybara/rspec'
require 'capybara/poltergeist'
require 'tempfile'
require 'pry'

Capybara.javascript_driver = :poltergeist

Dir["#{File.dirname(__FILE__)}/factories/**/*.rb"].each { |f| require f }

RSpec.configure do |config|
  config.mock_with :rspec
  config.use_transactional_fixtures = true
  config.infer_spec_type_from_file_location!
end
