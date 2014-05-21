class Tree
	attr_accessor :value, :right_node, :left_node

	def initialize(data)
		@value = data
	end
end

class BinarySearchTree
	attr_accessor :root

	def initialize data
		@root = Tree.new(data)
	end

	def insert data
		current_node = @root
		while current_node != nil
			if data < current_node.value && current_node.left_node.nil?
				new_node = Tree.new(data)
				current_node.left_node = new_node
				return
			elsif data > current_node.value && current_node.right_node.nil?
				new_node = Tree.new(data)
				current_node.right_node = new_node
				return
			elsif data < current_node.value
				current_node = current_node.left_node
			elsif data > current_node.value
				current_node = current_node.right_node
			end
		end
	end

	def in_order_traversal(node = @root)
		return if node.nil?
		in_order_traversal(node.left_node)
		puts node.value
		in_order_traversal(node.right_node)
	end

	def post_order_traversal(node = @root)
		return if node.nil?
		in_order_traversal(node.left_node)
		in_order_traversal(node.right_node)
		puts node.value
	end
end