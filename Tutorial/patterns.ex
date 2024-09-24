# ***** RUN *****
#   iex
#   c("patterns.ex")
#   Patterns.pattern_stuff

defmodule Patterns do

  # ***** PATTERN MATCHING *****
  def pattern_stuff do
    # Pattern matching
    [length, width] = [10, 20]
    IO.puts("Length : #{length} | Width : #{width}")

    # Pattern matching with a list and _ as a placeholder for the rest
    # _ is used to ignore a value in a pattern
    [_, [_, interest_value]] = [20, [30, 40]]
    IO.puts("Interest value : #{interest_value}")

    # Pattern matching with a map
    %{:ok => value} = %{:ok => "Hello", :error => "World"}
    IO.puts("Value : #{value}")

    # Pattern matching with a map and _ as a placeholder for the rest
    %{:ok => value, _ => _} = %{:ok => "Hello", :error => "World"}
    IO.puts("Value : #{value}")

    # Pattern matching with a tuple
    {:ok, value} = {:ok, "Hello"}
    IO.puts("Value : #{value}")

    # Pattern matching with a tuple and _ as a placeholder for the rest
    {:ok, value, _} = {:ok, "Hello", 123}
    IO.puts("Value : #{value}")
  end

end
