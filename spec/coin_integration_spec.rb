
require ('capybara/rspec')
require ('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the coin path', {:type => :feature}) do
  it ('Takes user input number and returns coin results.') do