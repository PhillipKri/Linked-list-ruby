require_relative 'lib/LinkedList'

test = LinkedList.new
test.append(1)
test.append(2)
test.prepend(0)
test.prepend(10)
puts test

list = LinkedList.new

list.append('dog')
list.append('cat')
list.append('parrot')
list.append('hamster')
list.append('snake')
list.append('turtle')

puts list