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
            @parent.children.delete(@value)
        end
        @parent= new_parent
        unless @parent.children.include?(@value)
            @parent.children << @value
        end
    end
    
end

