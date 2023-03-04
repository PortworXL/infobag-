
require ('rspec')
require ('coin.rb')

describe('String#coin') do
  # it('takes user input for number of cents and returns number of cents') do
  #   expect(4.coin()).to(eq(4))
  # end

  it('divides the user input by 25 and rounds down to return the number of quarters') do
    expect("25".coin()).to(eq([1,0,0,0]))
  end

  it('divides the new_cents by 10 and rounds down to return the number of dimes') do
    expect("35".coin()).to(eq([1,1,0,0]))
  end

  it('divides the new_cents by 5 and rounds down to return the number of nickels') do
    expect("40".coin()).to(eq([1,1,1,0]))
  end

  it('takes new_cents and returns number of pennies') do
    expect("41".coin()).to(eq([1,1,1,1]))
  end

  it('tests another number') do
    expect("110".coin()).to(eq([4,1,0,0]))
  end
end