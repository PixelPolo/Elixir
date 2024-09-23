# ***** RUN *****
#   iex
#   c("tutorial.ex")
#   Tutorial.ask_name

# ***** MODULE TO HOLD FUNCTIONS *****
defmodule Tutorial do

  # ***** HELLO MY NAME IS *****
  def ask_name do
    # |> String.trim remove newline character and whitespace
    # By default, IO.gets/1 add a newline character at the end
    name = IO.gets("What is your name? ") |> String.trim
    IO.puts("Hello #{name}!")
  end

end

### VIDEO STOP = 28 min
### https://www.youtube.com/watch?v=pBNOavRoNL0
