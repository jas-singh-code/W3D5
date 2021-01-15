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
        @parent= new_parent
        @parent.children = 
    end
    
end

