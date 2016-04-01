defmodule Niubbo do
    @doc """
    Function that calculates the length of a list.
    """
    def list_len(list) do
        count_len(0, list)
    end

    defp count_len(total, []) do
        total
    end

    defp count_len(total, [head | tail]) do
        new_total = total + 1
        count_len(new_total, tail)
    end

    # def list_len([]), do: 0
    # def list_len([_ | tail]) do
    #   1 + list_len(tail)
    # end


    @doc """
    Function that takes two integers: from  and to  and returns a list of all numbers in a given range.
    """
    def range(from, to) when from > to do
        []
    end

    def range(from, to) do
        [from | range(from + 1, to)]
    end

    @doc """
    Function that takes a list and returns another list that contains only positive numbers from the input list.
    """
    def positive([]), do: []

    def positive([head | tail]) when head > 0 do
        [head | positive(tail)]
    end

    def positive([_ | tail]) do
        positive(tail)
    end
end
