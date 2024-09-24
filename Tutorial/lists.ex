# ***** RUN *****
#   iex
#   c("list.ex")
#   Lists.list_stuff
#   Lists.comprehension_stuff

# List are ordered collections of elements.
# They are used to store multiple values in a single variable.
# No access with dot notation.
# They can contain any type of value.
# They are enumerable.
# They are implemented as linked lists.

defmodule Lists do

  # ***** LIST FUNCTIONS *****
  def list_stuff do
    # List
    my_list = [1, 2, 3]
    my_list2 = [4, 5, 6]

    # Combine : ++
    my_list3 = my_list ++ my_list2
    IO.puts("List : #{inspect my_list3}")

    # Subtract : --
    my_list4 = my_list -- [2]
    IO.puts("List : #{inspect my_list4}")

    # Check if there is an element
    IO.puts 1 in my_list

    # Check if there is not an element
    IO.puts 1 not in my_list

    # Head and Tail
    my_list = [1, 2, 3]
    [head | tail] = my_list
    IO.puts("Head : #{head} | Tail : #{inspect tail}")

    # inspect : IO.inspect
    IO.inspect my_list # [1, 2, 3]
    IO.inspect [97,98], charlists: :as_lists # [97, 98] : 'ab'

    # Enumerate : Enum.each
    my_list = [1, 2, 3]
    Enum.each(my_list, fn(x) -> IO.puts(x) end)

    # Map : Enum.map
    my_list = Enum.map(my_list, fn(x) -> x * 2 end)
    IO.puts("List map x * 2 : #{inspect my_list}")

    # Filter : Enum.filter
    my_list = Enum.filter(my_list, fn(x) -> rem(x, 2) == 0 end)
    IO.puts("List filter even numbers : #{inspect my_list}")

    # Reduce : Enum.reduce
    my_list = Enum.reduce(my_list, 0, fn(x, acc) -> x + acc end)
    IO.puts("List reduce sum : #{my_list}")

    # Delete : List.delete
    my_list = [1, 2, 3, 4, 5]
    my_list = List.delete(my_list, 4)
    IO.puts("List delete 4 : #{inspect my_list}")

    # Delete : List.delete_at/2
    my_list = List.delete_at(my_list, 1)
    IO.puts("List delete at index 1 : #{inspect my_list}")

    # Insert : List.insert_at/3
    my_list = List.insert_at(my_list, 1, 2)
    IO.puts("List insert 2 at index 1 : #{inspect my_list}")

    # List with key value pairs
    my_list = [{:name, "John"}, {:age, 25}]
    IO.puts "List with key value pairs : #{inspect my_list}"
    IO.puts my_list[:name] # "John"

    # Enum.all?(enumerable, fun)
    IO.puts Enum.all?([1, 2, 3], fn(x) -> x > 0 end) # true
    IO.puts Enum.all?([1, 2, 3], fn(x) -> x > 1 end) # false

    # Enum.any?(enumerable, fun)
    IO.puts Enum.any?([1, 2, 3], fn(x) -> x > 2 end) # true
    IO.puts Enum.any?([1, 2, 3], fn(x) -> x > 3 end) # false

    # Easy way to check if a list is empty
    IO.puts Enum.empty?([]) # true

    # Easy way to check even numbers
    IO.puts Enum.all?([2, 4, 6], fn(x) -> rem(x, 2) == 0 end) # true

    # Display a list : recursive function
    display_list([1, 2, 3, 4, 5])
  end

  # ***** RECURSIVE FUNCTION *****
  def display_list([]), do: nil
  def display_list([head | tail]) do
    IO.puts head
    display_list(tail)
  end

  # ***** LIST COMPREHENSION *****
  def comprehension_stuff do
    # List comprehension
    my_list = for x <- [1, 2, 3], do: x * 2
    # [2, 4, 6]
    IO.puts("List comprehension : #{inspect my_list}")

    # List comprehension with filter
    my_list = for x <- [1, 2, 3], x > 1, do: x * 2
    # [4, 6]
    IO.puts("List comprehension with filter : #{inspect my_list}")

    # List comprehension with multiple lists
    my_list = for x <- [1, 2], y <- [3, 4], do: x * y
    # [3, 4, 6, 8]
    IO.puts("List comprehension with multiple lists : #{inspect my_list}")

    # List comprehension with multiple lists and filter
    my_list = for x <- [1, 2], y <- [3, 4], x * y > 3, do: x * y
    # [4, 6, 8]
    IO.puts("List comprehension with multiple lists and filter : #{inspect my_list}")

    # List comprehension with different types
    my_list = for x <- [1, 2], y <- [:a, :b], do: {x, y}
    # [{1, :a}, {1, :b}, {2, :a}, {2, :b}]
    IO.puts("List comprehension with different types : #{inspect my_list}")

    # List comprehension with different sizes
    my_list = for x <- [1, 2], y <- [3, 4, 5], do: {x, y}
    # [{1, 3}, {1, 4}, {1, 5}, {2, 3}, {2, 4}, {2, 5}]
    IO.puts("List comprehension with different sizes : #{inspect my_list}")
  end

end
