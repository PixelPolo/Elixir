# ***** RUN *****
#   iex
#   c("tuples.ex")
#   Tuples.tuple_stuff

# Tuples are fixed-size, ordered collections of values.
# They are useful for grouping values together.
# They are created with curly brackets and commas.
# They can contain any type of value.
# They are accessed with the dot notation and the index.
# They are not zero-based.
# They are not resizable.
# They are not enumerable.
# Normally used for a small number of values (2-4).

defmodule Tuples do

  # ***** TUPLE FUNCTIONS *****
  def tuple_stuff do
    # Tuple
    my_tuple = {:ok, "Hello", 123}

    # Check if tuple
    IO.puts "Tuple : #{is_tuple(my_tuple)}"

    # Inspection
    IO.inspect my_tuple

    # Assignation
    {status, message, code} = my_tuple
    IO.puts "Tuple assignation : #{status} | #{message} | #{code}"

    # Access : elem/2
    IO.puts "Tuple first element : #{elem(my_tuple, 0)}"
    IO.puts "Tuple second element : #{elem(my_tuple, 1)}"
    IO.puts "Tuple third element : #{elem(my_tuple, 2)}"

    # Update : put_elem/3
    my_tuple2 = put_elem(my_tuple, 1, "World")
    IO.puts "Tuple update : #{inspect my_tuple2}"

    # Append : Tuple.append/2
    my_tuple3 = Tuple.append(my_tuple, 456)
    IO.puts "Tuple append : #{inspect my_tuple3}"

    # Size : tuple_size/1
    IO.puts "Tuple size : #{tuple_size(my_tuple)}"

    # Delete : Tuple.delete_at/2
    my_tuple4 = Tuple.delete_at(my_tuple, 1)
    IO.puts "Tuple delete : #{inspect my_tuple4}"

    # Insert : Tuple.insert_at/3
    my_tuple5 = Tuple.insert_at(my_tuple, 2, "World")
    IO.puts "Tuple insert : #{inspect my_tuple5}"

    # Duplicate : Tuple.duplicate/2
    my_tuple6 = Tuple.duplicate(0, 5) # {0, 0, 0, 0, 0}
    IO.puts "Tuple duplicate : #{inspect my_tuple6}"

    # Pattern matching : Case statement
    my_tuple8 = {:ok, "Hello", 123}
    case my_tuple8 do
      {:ok, message, code} -> IO.puts "Tuple pattern matching : #{message} | #{code}"
      _ -> IO.puts "Tuple pattern matching : no match"
    end
  end

end
