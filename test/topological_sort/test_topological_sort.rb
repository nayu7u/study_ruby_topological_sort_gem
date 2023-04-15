require "test_helper"

class TestTopologicalSort < Minitest::Test
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
      [7, 0],
    ]
    result = StudyRubyTopologicalSortGem::TopologicalSort.new.exec(graph)
    assert_equal(result, [4, 1, 6, 3, 2, 7, 0, 5])
  end

  def test_exec2
    graph = [
      [4, 2],
      [0, 5],
      [1, 4],
      [3, 5],
      [3, 1],
      [1, 0],
      [0, 2],
    ]
    result = StudyRubyTopologicalSortGem::TopologicalSort.new.exec(graph)
    assert_equal(result, [3,1,0,4,5,2])
  end

  def test_exec3
    graph = [
      [3, 2],
      [1, 2]
    ]
    result = StudyRubyTopologicalSortGem::TopologicalSort.new.exec(graph)
    assert_equal(result, [3, 1, 2])
  end
end
