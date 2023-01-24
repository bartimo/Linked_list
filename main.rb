require './lib/Node'
require './lib/LinkedList'

sandwhichs = LinkedList.new('Ham')
sandwhichs.add('Cheese')
sandwhichs.add('Turkey')
sandwhichs.add('Salami')

p sandwhichs.print