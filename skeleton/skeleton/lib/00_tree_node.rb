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

    def dfs(target)
        if self.value == target
            return self
        end
        until self.children.empty?
            self.children.each { |child| child.dfs(target) }
        end
    nil
    end
end




