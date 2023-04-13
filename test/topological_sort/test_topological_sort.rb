require "test_helper"

class TestTopologicalSort
  def test_exec1
    graph = [
      [0, 5],
      [1, 3],
      [1, 6],
      [2, 5],
      [2, 7],
      [3, 0],
      [3, 7],
      [4, 1],
      [4, 2],
      [4, 6],
      [6, 7],
      [7, 0]
    ]
    result = TestStudyRubyTopologicalSortGem::TestTopologicalSort.exec(graph)
    assert(result == [4, 2, 1, 6, 3, 7, 0, 5])
  end

  def test_exec2
    graph = [
      [0, 5],
      [1, 3],
      [1, 6],
      [2, 5],
      [2, 7],
      [3, 0],
      [3, 7],
      [4, 1],
      [4, 2],
      [4, 6],
      [6, 7],
      [7, 0]
    ]
    result = TestStudyRubyTopologicalSortGem::TestTopologicalSort.exec(graph)
    assert(result == [4, 2, 1, 6, 3, 7, 0, 5])
  end

  def test_exec3
    graph = [
      [4, 2],
      [3, 2],
      [1, 2]
    ]
    result = TestStudyRubyTopologicalSortGem::TestTopologicalSort.exec(graph)
    assert(result == [4, 2, 1, 6, 3, 7, 0, 5])
  end
end
