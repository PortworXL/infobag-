
require ('capybara/rspec')
require ('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the coin path', {:type => :feature}) do
  it ('Takes user input number and returns coin results.') do
    visit('/')
    fill_in('number', :with => '110')
    click_button('Submit!')
    expect(page).to have_content('Here is your coin combination 110 cents is 4 quarters, 1 dimes, 0 nickels, 0 pennies')