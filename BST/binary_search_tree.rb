class Node 
  attr_accessor :value, :left, :right
  def initialize(value)
      @value = value
      @left = nil
      @right = nil
  end
end

class BinarySearchTree
  attr_accessor :root, :size
  def initialize()
      @root = nil
      @size = 0;
  end

  def insert_node(value)
      if @root == nil
          @root = Node.new(value)    
      else 
          current_node = @root
          parent_node = @root
          while current_node != nil 
              parent_node = current_node
              if value < current_node.value 
                  current_node = current_node.left
              else
                  current_node = current_node.right
              end
          end
          if value < parent_node.value
              parent_node.left = Node.new(value)
          else
              parent_node.right = Node.new(value)
          end        
      end
      @size += 1
  end

  def contains_value(value, node = self.root)
    current_node = node
    while current_node != nil
      if value < current_node.value
        current_node = current_node.left
      elsif value > current_node.value
        current_node = current_node.right
      else
        return true
      end
    end
    return false
  end

  def in_order(node = self.root)
    if node != nil
        in_order(node.left)
        print "#{node.value} "
        in_order(node.right)
    end
  end

  def pre_order(node = self.root)
    if node != nil
        print "#{node.value} "
        pre_order(node.left)
        pre_order(node.right)
    end
  end

  def post_order(node = self.root)
    if node != nil
        post_order(node.left)
        post_order(node.right)
        print "#{node.value} "
    end
  end

  def remove_node(value, node = self.root, parent_node = nil)
    current_node = node
    while current_node != nil
      if value < current_node.value
        parent_node = current_node
        current_node = current_node.left
      elsif value > current_node.value
        parent_node = current_node
        current_node = current_node.right
      else
        if current_node.left != nil && current_node.right != nil
          current_node.value = current_node.right.get_min_value()
          current_node.right.remove_node(current_node.value, current_node)
        elsif parent_node == nil
          if current_node.left != nil
            current_node.value = current_node.left.value
            current_node.right = current_node.left.right
            current_node.left = current_node.left.left
          elsif current_node.right != nil
            current_node.value = current_node.right.value
            current_node.left = current_node.right.left
            current_node.right = current_node.right.right
          else
            current_node.value = nil
          end
        elsif parent_node.left == current_node
           if current_node.left != nil 
              parent_node.left = current_node.left
           else 
               parent_node.left = current_node.right
           end
        elsif parent_node.right == current_node
           if current_node.left != nil 
              parent_node.right = current_node.left
           else 
              parent_node.right = current_node.right
           end
        end
        break
      end
    end
      return node
  end

  def get_min_value(node = self.root)
    current_node = node
    while current_node.left != nil
      current_node = current_node.left
    end
    return current_node.value
  end

  def clear_tree()
      self.root = nil
      self.size = 0
  end

  def size_of_bst()
      @size
  end
end

tree = BinarySearchTree.new
tree.insert_node(50)
tree.insert_node(25)
tree.insert_node(75)
tree.insert_node(37)
tree.insert_node(87)
tree.insert_node(63)
tree.insert_node(12)
puts tree.contains_value(12)

tree.in_order

puts tree.size

# tree.remove_node(63)
# tree.remove_node(12)
# tree.post_order