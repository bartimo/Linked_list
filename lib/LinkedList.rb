require './lib/Node'
require 'pry-byebug'

class LinkedList

  attr_reader :head, :tail

  def initialize(value = nil)
    @head = Node.new(value)
    @tail = @head
  end

  def append(value)
    current_node = @tail
    new_node = Node.new(value)
    current_node.next_node = new_node
    new_node.previous_node = @tail
    @tail = new_node
  end

  def prepend(value)
    current_node = @head
    new_node = Node.new(value)
    current_node.previous_node = new_node
    new_node.next_node = @head
    @head = new_node
  end

  def print()
   # binding.pry
    result = ""
    current_node = @head
    while current_node.next_node != nil
      result = result + current_node.value + ' -> '
      current_node = current_node.next_node
    end
    result = result + current_node.value
  end

  def head
    @head
  end

  def tail
     @tail
  end

end

