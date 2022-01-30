defmodule ListFilterTest do
  use ExUnit.Case

  test "given the list [\"1\", \"3\", \"6\", \"43\", \"banana\", \"6\", \"abc\"] then returns 3" do
    result = ListFilter.call(["1", "3", "6", "43", "banana", "6", "abc"])
    assert result == 3
  end

  test "given an empty list then returns 0" do
    result = ListFilter.call([])
    assert result == 0
  end
end
