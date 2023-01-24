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
    result = ''
    current_node = @head
    until current_node.next_node.nil?
      result += "#{current_node.value} -> "
      current_node = current_node.next_node
    end
    result + current_node.value
  end

  def size
    current_node = @head
    count = 0
    until current_node.next_node.nil?
      count += 1
      current_node = current_node.next_node
    end
    count + 1
  end
end
