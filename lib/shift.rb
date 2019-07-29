require 'pry'

class Shift
  attr_reader :message, :key_values, :offset_values


  def initialize(message, key_values, offset_values)
    @message = message.split(//)
    @key_values = key_values
    @offset_values = offset_values
    @characters = ('a'..'z').to_a << ' '
  end

  def create_final_key
    final_key_values = Hash.new

    @key_values.map do |key, value|
      final_key_values[key] = @key_values[key].to_i + @offset_values[key].to_i
    end
   final_key_values
  end

  def return_key(num)
    

  end

  def assign_key_letters
    new_hash = Hash.new{|h,k| h[k] = [] }

    message.each.with_index do |char, index|
      new_hash[index % 4] << char
    end
    new_hash
  end


  def map_new_letter_values
    key_shift_letters = [:a, :b, :c, :d]
    key_shift_values = Hash.new

    key_shift_letters.each do |key|
    key_shift_values[key] = Hash[@characters.zip(@characters.rotate(create_final_key[key].to_i))]
    end
    key_shift_values
  end
end
