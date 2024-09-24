# ***** RUN *****
#   iex
#   c("string.ex")
#   Strings.string_stuff

defmodule Strings do

  # ***** STRING *****
  def string_stuff do
    # String : UTF-8
    my_string = "Hello World!"
    IO.puts("String : #{is_binary(my_string)} | value : #{my_string}")

    # Length
    IO.puts "String length : #{String.length(my_string)}"

    # Concatenation
    my_string2 = "Elixir" <> " is awesome!"
    IO.puts "String concatenation : #{my_string2}"

    # Comparison
    IO.puts "String comparison 1 : #{my_string == my_string2}"
    IO.puts "String comparison 2 : #{"Egg" == "egg"}" # case insensitive with == operator"
    IO.puts "String comparison 3 : #{"Egg" === "Egg"}" # case sensitive with === operator"

    # Contains
    IO.puts "String contains another string : #{String.contains?(my_string2, "is")}"

    # First and last character
    IO.puts "String first character : #{String.first(my_string)}"
    IO.puts "String last character : #{String.last(my_string)}"

    # Index
    IO.puts "String index : #{String.at(my_string, 1)}"

    # Substring
    my_string3 = "abcdefgh"
    IO.puts "String substring 1 : #{String.slice(my_string3, 0..3)}" # from index 0 to 3 included : "abcd"
    IO.puts "String substring 2 : #{String.slice(my_string3, 1, 3)}" # start at index 1 and take 3 characters : "bcd"

    # Reverse
    IO.puts "Reverse a string : #{String.reverse("Hello World!")}"

    # Uppercase, lowercase, capitalize and downcase
    IO.puts "Uppercase : #{String.upcase("Hello World!")}"
    IO.puts "Lowercase : #{String.downcase("HELLO WORLD!")}"
    IO.puts "Capitalize : #{String.capitalize("hello world!")}"
    IO.puts "Downcase : #{String.downcase("HELLO WORLD!")}"

    # Pipe an integer into a IO.puts string
    123 |> IO.puts

    # Split a string into a list
    IO.inspect String.split("Hello World!", " ")
  end

end
