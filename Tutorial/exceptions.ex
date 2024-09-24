# ***** RUN *****
#   iex
#   c("exceptions.ex")
#   Exceptions.exception_stuff

defmodule Exceptions do

  # ***** EXCEPTIONS *****
  def exception_stuff do

    # Raise an exception
    err = try do
      5 / 0
    rescue
      ArithmeticError -> "You can't divide by zero"
    end
    # Print the error
    IO.puts err

    # Raise an exception with a message
    err = try do
      raise "This is an error"
    rescue
      RuntimeError -> "This is a runtime error"
    end
    # Print the error
    IO.puts err

    # Raise an exception with multiple rescue clauses
    err = try do
      raise "This is an error"
    rescue
      ArithmeticError -> "This is an arithmetic error" # This will not be executed
      RuntimeError -> "This is a runtime error" # This will be executed
    end
    # Print the error
    IO.puts err
  end

end
