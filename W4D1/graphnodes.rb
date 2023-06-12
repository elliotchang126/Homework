class GraphNode

    attr_accessor :val, :neighbors

    def initialize(val)
        self.val = val
        self.neighbors = []
    end

    def add_neigbor(val)
        self.neighbor << val
    end


end

def bfs(starting_node, target_value)
    queue = [starting_node]

    visited = Set.new()
    return nil if visited.include(node)

    until queue.empty?
        ele = queue.shift
        ele.neighbors.each do |neighbor|
            queue << neighbor
            return neighbor if neighbor == target_value
        end
    end
    return nil
end


a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]