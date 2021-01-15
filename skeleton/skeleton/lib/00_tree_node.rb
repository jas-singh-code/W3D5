require "byebug"
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

        if !@parent.nil? && !(@parent.children.include?(self))
            @parent.children << self
        end
    end

    def add_child(child_node)
        child_node.parent = self
    end

    def remove_child(child_node)
        if !self.children.include?(child_node)
            raise "#{child_node} is not a child of this instance"
        end

        child_node.parent = nil
    end

    
    def inspect
        "#<stack:#{self.value}>"
    end
    debugger
    def dfs(target)
        debugger
        if self.value == target
            return self
        end
        debugger
        until self.children.empty?
            debugger
            self.children.each do |child| 
                result = child.dfs(target)
                if result != nil
                    return child
                else 
                    self.remove_child(child)
                    debugger
                end
                debugger
                # return result
            end
        end
        nil
    end
end
 n1 = PolyTreeNode.new("A")
 n2 = PolyTreeNode.new("B")
 n3 = PolyTreeNode.new('C')
 n4 = PolyTreeNode.new('D')
 n5 = PolyTreeNode.new('E')
 n6 = PolyTreeNode.new('F')
 n1.add_child(n2)
 n1.add_child(n3)
 n2.add_child(n4)
 n3.add_child(n5)
 n3.add_child(n6)
p n1.dfs("F")
# root:  1
# par2: 2,3
#leaf: 4,5,6

# 1->2->4
# 1->3->5
# 3->6 !!!F!!!