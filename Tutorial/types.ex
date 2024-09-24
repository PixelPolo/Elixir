# ***** RUN *****
#   iex
#   c("types.ex")
#   Types.data_stuff
#   Types.math_stuff

defmodule Types do

  # ***** DATA TYPES *****
  def data_stuff do
    # Integer : no max size (machine memory limit)
    my_int = 123
    IO.puts "Integer : #{is_integer(my_int)} | value : #{my_int}"

    # Float : 64 bits
    my_float = 123.45
    IO.puts "Float : #{is_float(my_float)} | value : #{my_float}"

    # Atom : constant whose name is its value
    my_atom = :hello
    IO.puts "Atom : #{is_atom(my_atom)} | value : #{my_atom}"

    # Atom with spaces
    my_atom_space = :"hello world"
    IO.puts "Atom with spaces : #{is_atom(my_atom_space)} | value : #{my_atom_space}"

    # Range : inclusive
    my_range = 1..10
  end


  # ***** MATHS *****
  def math_stuff do
    # Math with operators and built-in functions
    IO.puts "Addition : #{1 + 2}" # Addition
    IO.puts "Subtraction : #{5 - 3}" # Subtraction
    IO.puts "Multiplication : #{2 * 3}" # Multiplication
    IO.puts "Division : #{10 / 2}" # Division
    IO.puts "Integer division : #{div(10, 3)}" # Integer division
    IO.puts "Remainder : #{rem(10, 3)}" # Remainder
    IO.puts "Absolute value : #{abs(-10)}" # Absolute value
    IO.puts "Round : #{round(3.14)}" # Round
    IO.puts "Truncate : #{trunc(3.14)}" # Truncate

    # Math with :math module for power, square root, floor, ceil, random
    IO.puts "Power : #{:math.pow(2, 3)}" # Power
    IO.puts "Square root : #{:math.sqrt(9)}" # Square root
    IO.puts "Floor : #{:math.floor(3.14)}" # Floor
    IO.puts "Ceil : #{:math.ceil(3.14)}" # Ceil
    IO.puts "Random : #{:rand.uniform()}" # Random between 0 and 1
    # And many more functions...
  end

end
