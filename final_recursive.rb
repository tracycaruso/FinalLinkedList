class LinkedList
  attr_reader :head


  def push(data, node = head)
    if node.nil?
      @head = Node.new(data)
    else
      if node.next_node.nil?
        node.next_node = Node.new(data)
      else
          push(data, node.next_node)
      end
    end
  end


  def count(node = head)
    if node.nil?
      0
    else
      1 + count(node.next_node)
    end
  end


  def position(index, node = head)
    return nil unless node
      if index == 0
        node.data
      else
        position(index - 1, node.next_node)
      end
    end
  end

  def pop(node = head)
    if node.nil?
      @head = nil
    elsif node.next_node && node.next_node.next_node.nil?
      node.next_node = nil
    else
      pop(node.next_node)
    end
  end





class Node
  attr_accessor :next_node, :data

  def initialize(data)
    @data = data
  end
end

list = LinkedList.new


list.push("Cat")
list.push("Dog")
list.push("Pizza")
list.push("Cat")
list.push("Dog")

puts list.inspect.split
