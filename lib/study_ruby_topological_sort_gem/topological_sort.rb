module StudyRubyTopologicalSortGem
  class TopologicalSort
    # graph: Array[Array[Integer, Integer]]
    def exec(graph)
      vlist = graph.flatten.sort.uniq
      g = vlist.map { |v| [v, []]}.to_h
      deg = vlist.map { |v| [v, 0] }.to_h
      graph.each do |a, b|
        g[b] << a
        deg[a] += 1
      end
      g.each { |k, v| [k, v.sort!]}
      queue = deg.select { |v, count| count.zero? }.map { |v, _| v }.sort

      order = []
      while queue.size.positive? do
        v = queue.shift
        order << v

        g[v].each do |v2|
          deg[v2] -= 1
          queue << v2 if deg[v2].zero?
        end
      end

      order.reverse
    end
  end
end
