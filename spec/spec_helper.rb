require 'rubygems'
require 'rspec'
require 'capybara/rspec'

spec_dir = File.expand_path(File.dirname(__FILE__))
# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir["#{spec_dir}/support/**/*.rb"].each {|f| require f}

RSpec.configure do |config|
  # Run specs in random order to surface order dependencies. If you find an
  # order dependency and want to debug it, you can fix the order by providing
  # the seed, which is printed after each run.
  #     --seed 1234
  config.order = "random"
  config.include Rack::Test::Methods
end

require './app'

def app
  Sinatra::Application
end