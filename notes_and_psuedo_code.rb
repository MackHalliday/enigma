message = "letter"
characters = ('a'..'z').to_a << ' '

#1. Create final shift key by joining key and offset values
key_shift = {:a=>01, :b=>02}


#2. Create hash with shifted chars values for each key
key_shift_letters = [:a, :b]
key_shift_values = Hash.new

key_shift_letters.each do |key|
key_shift_values[key] = Hash[characters.zip(characters.rotate(key_shift[key].to_i))]
end
key_shift_values


# 3. Create hash with letters to be used for each key shift
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

# Shift letters according to their keys shift values

 hash_new = Hash.new

parse_message.map do |key, letters|
  hash_new[key] = letters.map do |letter|
    letter = key_shift_values[key][letter]
  end
end

 hash_new

 #Merge hash values and return encrypted string

 hash_new[:a].zip(hash_new[:b]).flatten.join
