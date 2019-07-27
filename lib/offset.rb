require 'pry'
require 'date'

class Offset

  attr_reader :keys

  def initialize(date = todays_date)
    @date = date
  end

  def todays_date
    Time.now.strftime("%d%m%y")
  end

  def square_number
    @date.to_i ** 2
  end

  def last_four_digits
    square_number.to_s[-4..-1].split('')
  end

  def get_key_values
    keys = [:a, :b, :c, :d]
    key_hash = Hash[keys.zip last_four_digits]
  end
end
