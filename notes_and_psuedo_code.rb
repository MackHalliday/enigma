
##### General design for shifting letters for encryption **
message = "letter"
characters = ('a'..'z').to_a << ' '

a_shift = 1
b_shift = 2

a_shifts = Hash[characters.zip(characters.rotate(a_shift))]

b_shifts = Hash[characters.zip(characters.rotate(b_shift))]

a_values = []
b_values = []


message.split(//).each.with_index do |char, index|
  if index % 2 == 0
    a_values << char
  else
    b_values << char
  end
end

a_values
b_values


a_final = a_values.map do |value|
  value = a_shifts[value]
end

b_final = b_values.map do |value|
  value = b_shifts[value]
end

a_final.zip(b_final).flatten.join
