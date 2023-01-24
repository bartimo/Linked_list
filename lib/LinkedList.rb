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

  def to_s
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

  def at(index)
    if index <= self.size - 1
      current_node = @head
      for i in 1..index do
        current_node = current_node.next_node
      end
    else
      return nil
    end
    current_node.value
  end

  def pop
    current_node = @tail
    @tail = current_node.previous_node
    @tail.next_node = nil
    current_node
  end

  def contains?(value)
    current_node = @head
    until current_node.next_node.nil?
      return true if current_node.value == value

      current_node = current_node.next_node
    end
    return true if current_node.value == value
    false
  end

  def find(value)
    index = 0
    current_node = @head
    until current_node.next_node.nil?
      return index if current_node.value == value
      index += 1
      current_node = current_node.next_node
    end
    return index if current_node.value == value
    nil
  end

  def insert_at(value,index)
    if index <= self.size - 1
      current_node = @head
      new_node = Node.new(value)
      position = 0
      until position == index - 1
        current_node = current_node.next_node
        position += 1
      end
      new_node.previous_node = current_node
      new_node.next_node = current_node.next_node
      current_node.next_node.previous_node = new_node
      current_node.next_node = new_node
    end
    new_node.value
  end

  def remove_at(index)
    if index <= self.size - 1
      current_node = @head
      position = 0
      until position == index
        current_node = current_node.next_node
        position += 1
      end
      current_node.previous_node.next_node = current_node.next_node
      current_node.next_node.previous_node = current_node.previous_node
    end
  end
end
