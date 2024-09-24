# ***** RUN *****
#   iex
#   c("control.ex")
#   Controls.compare_stuff
#   Controls.control_stuff

defmodule Controls do

  # ***** COMPARE VALUES *****
  def compare_stuff do
    # Comparison operators
    # Same as other languages
    # <, >, <=, >= for numbers
    # ==, != for values
    # ===, !== for values and data types

    # Equal, not equal
    IO.puts "Equal 4 == 4.0 : #{4 == 4.0}" # true
    IO.puts "Equal 4 === 4.0 : #{4 === 4.0}" # false
    IO.puts "Not equal 4 != 4.0 : #{4 != 4.0}" # false
    IO.puts "Not equal 4 !== 4.0 : #{4 !== 4.0}" # true

    # and, or, not
    IO.puts "true and true : #{true and true}" # true
    IO.puts "true or false : #{true or false}" # true
    IO.puts "not false : #{not false}" # true

    # Same with &&, ||, !
    IO.puts "true && true : #{true && true}" # true
    IO.puts "true || false : #{true || false}" # true
    IO.puts "!false : #{!false}" # true
  end

  # ***** CONTROL STRUCTURES *****
  def control_stuff do
    # If, else
    if 1 == 1 do
      IO.puts "1 is equal to 1"
    else
      IO.puts "1 is not equal to 1"
    end

    # Unless
    unless 1 == 1 do
      IO.puts "1 is not equal to 1"
    else
      IO.puts "1 is equal to 1"
    end

    # Case : Compare with a pattern (switch)
    age = 19
    case age do
      14 -> IO.puts "You can't drive"
      16 -> IO.puts "You can drive"
      18 -> IO.puts "You can vote"
      21 -> IO.puts "You can drink"
      _ -> IO.puts "You can do whatever you want"
    end

    # Cond : like an elsif
    cond do
      1 == 0 -> IO.puts "Zero"
      1 == 1 -> IO.puts "One"
      true -> IO.puts "Other"
    end

    # Ternary operator
    IO.puts "Ternary operator : #{if 1 == 1, do: "One", else: "Other"}"
  end
end
