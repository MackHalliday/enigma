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

  def assign_key_letters

  end
end
