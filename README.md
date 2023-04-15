# StudyRubyTopologicalSortGem

example
```ruby
require "bundler/inline"

gemfile do
  gem "study_ruby_topological_sort_gem", path: "./"
end

graph = [[3, 2], [1, 2]]
p StudyRubyTopologicalSortGem::TopologicalSort.new.exec(graph)

# => [3, 1, 2]
```
