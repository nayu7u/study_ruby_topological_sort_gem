require "test_helper"

class TestTopologicalSort
  def test_exec
    result = TestStudyRubyTopologicalSortGem::TestTopologicalSort.exec
    assert(result == "foo")
  end
end
