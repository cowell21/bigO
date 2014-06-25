class BinTreeNode
  attr_reader :value
  attr_accessor :parent
  attr_reader :children

  def initialize(value = nil, parent = nil)
    @value, @parent, @children = value, parent, []
    @parent.children.push(self) if @parent != nil
  end

  def left
    @children[0]
  end

  def right
    @children[1]
  end

  def bfs
    queue = [self]

    loop do
     current_node = queue.shift
     print current_node.value
     queue.push(current_node.left) if current_node.left
     queue.push(current_node.right) if current_node.right
     break if (queue.empty?)
    end
  end # will print in

end

a = BinTreeNode.new("a")
b = BinTreeNode.new("b", a)
c = BinTreeNode.new("c", a)
d = BinTreeNode.new("d", b)
e = BinTreeNode.new("e", b)
g = BinTreeNode.new("g", c)
h = BinTreeNode.new("h", c)
d1 = BinTreeNode.new("d1", d)
d2 = BinTreeNode.new("d2", d)

a.bfs
puts ""

#       A
#      / \
#     B   C
#    /\   /\
#   D E  F G
#  /\
#D1 D2

#abcdefgd1d2