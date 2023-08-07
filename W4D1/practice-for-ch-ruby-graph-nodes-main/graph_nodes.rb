require "set"

class GraphNode
    attr_accessor :value,:neighbors
    
    def initialize(val)
        self.value = val
        self.neighbors = []
        
    end
    
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

def bfs(starting_node, target_value)
    return starting_node if starting_node.value == target_value
    return nil if starting_node.neighbors.empty?

    queue = starting_node.neighbors
    visited_nodes = Set.new()
    visited_nodes << starting_node
    found_node = false
    while !found_node && !queue.empty?
        neighbor_node = queue.shift
        if visited_nodes.include?(neighbor_node)
            next
        end

        if neighbor_node.value == target_value
            found_node = neighbor_node
        else
            queue += neighbor_node.neighbors
        end

        visited_nodes << neighbor_node
    end

    if found_node
        return found_node
    else
        return nil
    end

end

p bfs(a, "f")