# ***** RUN *****
#   iex
#   c("recursions.ex")
#   Recursions.recursion_stuff
#   Recursions.factorial(5)

defmodule Recursions do

  # In Elixir, we cannot loop with a for or while loop.
  def recursion_stuff do
    sum([1, 2, 3, 4, 5]) |> IO.puts # 15
    loop(0, 5) # 0 1 2 3 4
  end

  # ***** RECURSIVE SUM *****
  # We can simplify by using "," instead of "do" and "end"
  # for one line functions.
  def sum([]), do: 0
  def sum([head | tail]), do: head + sum(tail)

  # ***** RECURSIVE LOOP *****
  def loop(min, max) do
    if min < max do
      IO.puts min
      loop(min + 1, max)
    else # to include max
      IO.puts max
    end
  end

  # ***** RECURSIVE FACTORIAL *****
  def factorial(n) do
    if n <= 1 do
      1
    else
      result = n * factorial(n - 1)
      result # return
    end
  end

end
