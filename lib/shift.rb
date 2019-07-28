require 'pry'

class Shift
  attr_reader :offset


  def initialize()
    @offset = Offset.new
  end
end
