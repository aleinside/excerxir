defmodule NiubboTest do
  use ExUnit.Case
  doctest Niubbo

  test "the truth" do
    assert 1 + 1 == 2
  end

  test "list_len []" do
      assert 0 === Niubbo.list_len([])
  end

  test "list_len [1]" do
      assert 1 === Niubbo.list_len([1])
  end

  test "list_len [1, 2, 3]" do
      assert 3 === Niubbo.list_len([1, 2, 3])
  end
end
