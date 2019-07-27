require 'pry'
require 'date'

class Offset

  attr_reader :keys

  def initialize()
    @keys = {}
  end

  def todays_date
    Time.now.strftime("%d%m%y")
  end

  def square_number
    todays_date.to_i * todays_date.to_i
  end

  def last_four_digits
    square_number.to_s[-4..-1].split('')
  end

  def set_key_values
    keys = [:a, :b, :c, :d]
    key_hash = Hash[keys.zip last_four_digits]
    @keys = key_hash
  end
end
