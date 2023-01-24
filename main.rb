require './lib/Node'
require './lib/LinkedList'

sandwhichs = LinkedList.new('Ham')
sandwhichs.append('Cheese')
sandwhichs.append('Turkey')
sandwhichs.append('Salami')
sandwhichs.prepend('Beef')

p sandwhichs.to_s

sandwhichs.insert_at("Mote Cristo",4)

p sandwhichs.to_s

sandwhichs.remove_at(2)

p sandwhichs.to_s