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

  test "range 1, 3" do
      assert [1, 2, 3] === Niubbo.range(1, 3)
  end

  test "range 1, 5" do
      assert [1, 2, 3, 4, 5] === Niubbo.range(1, 5)
  end

  test "range 1, 1" do
      assert [1] === Niubbo.range(1, 1)
  end

  test "range 5, 1" do
      assert [] === Niubbo.range(5, 1)
  end

  test "postive []" do
      assert [] === Niubbo.positive([])
  end

  test "postive [1, 2]" do
      assert [1, 2] === Niubbo.positive([1, 2])
  end

  test "postive [1, -2]" do
      assert [1] === Niubbo.positive([1, -2])
  end

  test "postive [-1, -2]" do
      assert [] === Niubbo.positive([-1, -2])
  end
end
