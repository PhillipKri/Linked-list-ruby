require_relative "Node.rb"

class LinkedList
  
  attr_accessor :size, :head, :tail
  def initialize
    @head = nil
    @tail = nil
    @size = 0
  end

  def append(value)
    new_node = Node.new(value)
    if @head.nil?
      @head = new_node
    else
      @tail.next_node = new_node
    end

    @tail = new_node
    @size += 1
  end

  def prepend(value)
    front_node = Node.new(value, @head)
    @head = front_node
    @size += 1
  end

  def size
    @size
  end

  def head
    @head
  end

  def tail
    @tail
  end

  def at(index)
    return @head.value if index == 1
    return 'nono' if index > @size  || index < 1
    check = @head
    i = index - 1 
    i.times do
      check = check.next_node
    end
    check.value
  end

  def pop
    if !@head.next_node.nil?
    count = size - 1
    check = @head
    count.times do
      check = check.next_node
    end
    check.next_node = nil
    @tail = check
    @size -= 1
    end
  end

  def contains?(value)
    check = @head
    @size.times do
      if check.value == value
        return true
      else
        check = check.next_node
      end
    end
    false
  end

  def find(value)
    check = @head
    index = 1
    @size.times do
      if check.value == value
        return index
      else
        index += 1
        check = check.next_node
      end
    end
    return nil
  end

  def to_s
    check = @head
        str = ""
        @size.times do
            str += "( #{check.value} ) -> "
            check = check.next_node
        end
        str += "nil"
        str
  end

  


end

