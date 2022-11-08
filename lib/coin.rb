
# class Fixnum
#   define_method(:coin) do
#     coin_array =[]
#     quarters = self./(25).floor()
#     coin_array.push(quarters)
#
#     new_cents = self.%(25)
#     dimes = new_cents./(10).floor()
#     coin_array.push(dimes)
#
#     new_cents = new_cents.%(10)
#     nickels = new_cents./(5).floor()
#     coin_array.push(nickels)
#
#     pennies = new_cents.%(5)
#     coin_array.push(pennies)
#
#     coin_array
#   end
# end


class String
  define_method(:coin) do
    coin_array =[]
    value_array = [25,10,5,1]