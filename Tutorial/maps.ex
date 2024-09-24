# ***** RUN *****
#   iex
#   c("maps.ex")
#   Maps.map_stuff

# Maps are key-value pairs.
# They are similar to dictionaries in Python.
# They are accessed with the dot notation and the key.
# They can contain any type of value.
# They are enumerable.
# They are implemented as hash maps.

defmodule Maps do

  # ***** MAP FUNCTIONS *****
  def map_stuff do
    # Map
    my_map = %{:ok => "Hello", :error => "World"}

    # Map with atoms as keys can be written with a semicolon
    my_map2 = %{ok: "Hello", error: "World"}

    # Check if map
    IO.puts "Map : #{is_map(my_map)}"
    IO.puts "Map : #{is_map(my_map2)}"

    # Inspection
    IO.inspect my_map

    # Access
    IO.puts "my_map[:ok] value = #{my_map[:ok]}"
    IO.puts "my_map2[:ok] value = #{my_map2[:ok]}"

    # Access with dot notation
    IO.puts "my_map.ok value = #{my_map.ok}"
    IO.puts "my_map2.ok value = #{my_map2.ok}"

    # Put new : Dict.put_new/3 ensure the key does not exist
    my_map = %{:foo => "Hello", :bar => "World"}
    my_map3 = Map.put_new(my_map, :ok, "!") # No order guaranteed
    IO.inspect my_map3

    # Put : Dict.put/3 update the value if the key exists
    my_map4 = Map.put(my_map, :ok, "!")
    IO.inspect my_map4

    # Enumerate : Enum.each
    Enum.each(my_map, fn({key, value}) -> IO.puts("#{key} : #{value}") end)
  end

end
