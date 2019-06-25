
#infinite loop structure
def infinite_loop?(list)
  tortoise = list.next_node
  hare = list.next_node
#tortise = first and hare = last
  until hare.nil?
    hare = hare.next_node
    return false if hare.nil?

    hare = hare.next_node
    tortoise = tortoise.next_node
    return true if hare == tortoise
  end

  return false
end

puts infinite_loop?(node4)
node1.next_node = node4 # creates an infinite loop
puts infinite_loop?(node4)