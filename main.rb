require './lib/Node'
require './lib/LinkedList'

sandwhichs = LinkedList.new('Ham')
sandwhichs.append('Cheese')
sandwhichs.append('Turkey')
sandwhichs.append('Salami')
sandwhichs.prepend('Beef')

p sandwhichs.print

p sandwhichs.size