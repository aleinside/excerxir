# Niubbo

`list_len/1`
function that calculates the length of a list

`range/2`
function that takes two integers: from  and to  and returns a list of all numbers in a given range

`positive/1`
function that takes a list and returns another list that contains only positive numbers from the input list

---

```
def large_lines!(path) do
    File.stream!(path)
    |> Stream.map(&String.replace(&1, "\n", ""))
    |> Enum.filter(&(String.length(&1) > 80))
end
```

`lines_lengths!/1`
that takes a file path and returns a list of numbers, with eachnumber representing the length of the corresponding line from the file

`longest_line_length!/1`
that returns the length of the longest line in a file

`longest_line!/1`
that returns the contents of the longest line in a file

`words_per_line!/1`
that returns a list of numbers, with each number represent-ing the word count in a file. Hint: to get the word count of a line, uselength(String.split(line))


## Installation

  1. Add niubbo to your list of dependencies in mix.exs:

        def deps do
          [{:niubbo, "~> 0.0.1"}]
        end

  2. Ensure niubbo is started before your application:

        def application do
          [applications: [:niubbo]]
        end
