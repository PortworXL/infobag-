
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
    current_value = self.to_i()
    value_array.each_index() do |index|
      coin_array.push(current_value./(value_array[index]).floor())
      current_value = current_value.%(value_array[index])
    end
    coin_array
  end
end