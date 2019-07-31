require 'pry'

class Shift
  attr_reader :message, :key_values, :offset_values

  def initialize(message, key_values, offset_values)
    @message = message.downcase.split(//)
    @key_values = key_values
    @offset_values = offset_values
    @key_cats = [:a, :b, :c, :d]
    @alphabet = ('a'..'z').to_a << ' '
  end

  def create_final_key(encrypt_decrypt)
    final_key_values = Hash.new
    @key_values.map do |key, value|
      final_key_values[key] = (@key_values[key].to_i + @offset_values[key].to_i) * (encrypt_decrypt)
    end
   final_key_values
  end

  def assign_message_keys
    keys_with_letters = Hash.new{|hash, key| hash[key] = [] }
    message.each.with_index do |char, index|
        keys_with_letters[@key_cats[index % @key_cats.count]] << char
      end
    keys_with_letters
  end

  def map_new_letter_values(encrypt_decrypt)
    key_shift_values = Hash.new
    @key_cats.each do |key|
      key_shift_values[key] = Hash[@alphabet.zip(@alphabet.rotate(create_final_key(encrypt_decrypt)[key].to_i))]
    end
    key_shift_values
  end

  def shift_letters_by_key_cat(encrypt_decrypt)
    shift_letters_by_key_cat = Hash.new{|hash, key| hash[key] = [] }
    assign_message_keys.map do |key, letters|
      letters.map do |letter|
        if @alphabet.include?(letter) == false
          shift_letters_by_key_cat[key] << letter
        else
          shift_letters_by_key_cat[key] << map_new_letter_values(encrypt_decrypt)[key][letter]
        end
      end
     end
    shift_letters_by_key_cat
  end

  def shift_message(encrypt_decrypt)
    shift_letters_by_key_cat(encrypt_decrypt).values.reduce(&:zip).join
  end
end
