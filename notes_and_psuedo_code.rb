message = "letter"
characters = ('a'..'z').to_a << ' '

a_shift = 1
b_shift = 2
key_shift = {:a=>01, :b=>02}

key_shift_letters = [:a, :b]
key_shift_values = Hash.new

key_shift_letters.each do |key|
key_shift_values[key] = Hash[characters.zip(characters.rotate(key_shift[key].to_i))]
end
key_shift_values


parse_message = {a: [],
                b: []
                }


message.split(//).each.with_index do |char, index|
  if index % 2 == 0
    parse_message[:a].push(char)
  else
    parse_message[:b].push(char)
  end
end

parse_message

 hash_new = Hash.new

parse_message.map do |key, letters|
  hash_new[key] = letters.map do |letter|
    letter = key_shift_values[key][letter]
  end
end

 hash_new

 hash_new[:a].zip(hash_new[:b]).flatten.join




# a_final = a_values.map do |value|
#   value = a_shifts[value]
# end

# b_final = b_values.map do |value|
#   value = b_shifts[value]
# end

# a_final.zip(b_final).flatten.join
