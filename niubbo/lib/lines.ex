defmodule Lines do
    def large_lines!(path) do
        File.stream!(path)
        |> Stream.map(&String.replace(&1, "\n", ""))
        |> Enum.filter(&(String.length(&1) > 80))
    end

    @doc """
    Function that takes a file path and returns a list of numbers, with each number representing the length of the corresponding line from the file
    """
    def lines_lengths(path) do
        File.read(path)
        |> lines_num
    end

    defp lines_num({:ok, contents}) do
        contents
        |> String.split("\n")
        |> length
    end

    defp lines_num(error), do: error
