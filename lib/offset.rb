require 'pry'
require 'date'

class Offset

  attr_reader :keys, :date

  def initialize(date)
    @date = date
    @key_categories = [:a, :b, :c, :d]
  end

  def square_number
    @date.to_i ** 2
  end

  def last_digits
    square_number.to_s[-(@key_categories.count)..-1].split('')
  end

  def get_key_values
    key_hash = Hash[@key_categories.zip last_digits]
  end
end
