require 'pry'

class Key

  attr_reader :keys, :five_digit_num

  def initialize(five_digit_num = random_num)
    @five_digit_num = five_digit_num
    @keys = keys
  end

  def random_num
    random_digits = []
    5.times do random_digits << rand(0..9)
    end
    random_digits
  end

  def create_num_pairs()
    random_num.each_cons(2).to_a
  end

  def join_pairs_nums_together
    create_num_pairs.map {|pair| pair[0].to_s + pair[1].to_s}
  end

  def set_num_values_as_keys
    keys = [:a, :b, :c, :d]
    key_hash = Hash[keys.zip join_pairs_nums_together]
    @keys = set_num_values_as_keys
  end
end
