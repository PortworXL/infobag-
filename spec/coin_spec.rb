
require ('rspec')
require ('coin.rb')

describe('String#coin') do
  # it('takes user input for number of cents and returns number of cents') do
  #   expect(4.coin()).to(eq(4))
  # end

  it('divides the user input by 25 and rounds down to return the number of quarters') do
    expect("25".coin()).to(eq([1,0,0,0]))
  end