# ***** RUN *****
#   iex
#   c("functions.ex")
#   Functions.ask_name
#   Functions.anonymous_function
#   Functions.default_values_fn
#   Functions.default_values_fn(3)

# ***** MODULE TO HOLD FUNCTIONS *****
defmodule Functions do

  # ***** HELLO MY NAME IS *****
  def ask_name do
    # |> String.trim remove newline character and whitespace
    # By default, IO.gets/1 add a newline character at the end
    name = IO.gets("What is your name? ") |> String.trim
    IO.puts("Hello #{name}!")
  end

  # ***** ANONYMOUS FUNCTION *****
  def anonymous_function do
    # Anonymous function
    add = fn a, b -> a + b end
    IO.puts "Anonymous function : #{add.(1, 2)}"

    # Anonymous function with &
    add2 = &(&1 + &2)
    IO.puts "Anonymous function with & : #{add2.(1, 2)}"

    # Anonymous function with multiple clauses
    add = fn
      {x, y} -> IO.puts "#{x} + #{y} = #{x + y}"
      {x, y, z} -> IO.puts "#{x} + #{y} + #{z} = #{x + y + z}"
    end
    IO.puts "Anonymous function with multiple clauses : #{add.({1, 2})}"
    IO.puts "Anonymous function with multiple clauses : #{add.({1, 2, 3})}"
  end

  # ***** DEFAULT VALUES *****
  def default_values_fn(a \\ 1, b \\ 2) do
    IO.puts "Default values : #{a} | #{b}"
  end

end
