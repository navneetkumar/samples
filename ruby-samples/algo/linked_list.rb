class LinkedList
  attr_accessor :data,:nextt
end

def populate
  head = LinkedList.new
  head.data = 0
  temp = head

  for data in (1..10)
    node = LinkedList.new
    node.data = data
    temp.nextt = node
    temp = temp.nextt
  end
  head
end

def print head
  iterator = head

  while(iterator)
    puts iterator.data
    iterator = iterator.nextt
  end
end

ll = populate

def reverse ll
  iterator = ll
  array = []
  while(iterator)
      array.push(iterator.data)
      iterator = iterator.nextt
  end
  reverse_ll = LinkedList.new
  iterator1 = reverse_ll
  for data in array.reverse
    iterator1.data = data
    iterator1.nextt = LinkedList.new
    iterator1 = iterator1.nextt
  end
  reverse_ll
end

print ll

print(reverse ll)