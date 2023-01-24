class Node
  attr_accessor :value, :next_node, :previous_node
  
  def initialize(value = nil)
    @value = value
    @next_node = nil
    @previous_node = nil
  end

end 

