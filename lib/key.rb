require 'pry'

class Key

  attr_accessor :keys, :five_digit

  def initialize(five_digit = random_num, keys = set_num_values_as_keys)
    @five_digit = five_digit
    @keys = keys
  end

  def random_num
    random_digits = []
    5.times do random_digits << rand(0..9).to_s
    end
    @five_digit = random_digits.join
  end
  #
  def create_num_pairs
    @five_digit.split(//).each_cons(2).to_a
  end
  
  def join_pairs_nums_together
    create_num_pairs.map {|pair| pair[0].to_s + pair[1].to_s}
  end

  def set_num_values_as_keys
    keys = [:a, :b, :c, :d]
    key_hash = Hash[keys.zip join_pairs_nums_together]
    @keys = key_hash
  end
end
