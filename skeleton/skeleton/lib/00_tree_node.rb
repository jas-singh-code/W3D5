class PolyTreeNode
    def initialize(value)
        @parent= nil
        @children = []
        @value= value
    end

    def parent
        @parent
    end

    def children
        @children
    end

    def value
        @value
    end

    def parent=(new_parent)
        unless @parent.nil?
            @parent.children.delete(self)
        end
        @parent= new_parent
        if !(@parent.children.include?(self)) && !@parent.nil?
            @parent.children << self
        end
    end

    def add_child(child_node)
        child_node.parent = self
    end

    def remove_child(child_node)
        child_node.parent = nil
    end
    
end

# n1 = PolyTreeNode.new("A")
# n2 = PolyTreeNode.new("B")
# n3 = PolyTreeNode.new("C")
# n1.parent= nil


# # n1= PolyTreeNode.new("root1")
# # n2= PolyTreeNode.new("root2")
# # n3= PolyTreeNode.new("root3")
# if @parent == nil
#     @parent = nil
#     return   
# end

# if @parent != nil && @parent.children.include?(self)  #old parent
#     @parent.children.delete(self)
# end


# if @parent != nil && !(@parent.children.include?(self))
#     @parent = new_parent   #new parent being re-assigned
#     @parent.children << self
# end



