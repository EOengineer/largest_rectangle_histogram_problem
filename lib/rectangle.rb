class Rectangle

  attr_accessor :num_elems, :heights

  def initialize(num_elems, heights)
    @num_elems = num_elems.to_i
    @heights   = heights.split(" ").map { |x| x.to_i }
  end

end
