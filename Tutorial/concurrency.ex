# **** RUN *****
#   iex
#   c("concurrency.ex")
#   Concurrency.concurrency_stuff
#   Concurrency.communication_stuff

# Concurrency is the ability to run multiple computations at the same time.
# Elixir provides several tools to work with concurrency.

defmodule Concurrency do

  # ***** CONCURRENCY BASIC *****
  def concurrency_stuff do
    spawn(fn -> loop(0, 50) end)
    spawn(fn -> loop(51, 100) end)
    spawn(fn -> loop(101, 150) end)
    # Outputs :
    # 0
    # 51
    # 101
    # 1
    # 52
    # 102
    # 2
    # 53
    # 103
    # ...
  end

  # ***** RECURSIVE LOOP *****
  def loop(min, max) do
    if min < max do
      IO.puts min
      loop(min + 1, max)
    else
      IO.puts max
    end
  end

  # ***** COMMUNICATION BETWEEN PROCESSES *****
  def communication_stuff do
    # Send a msg to myself
    pid = self()
    send(pid, {:french, "Bonjour"})

    # Receive the msg
    receive do
      {:french, msg} -> IO.puts "French : #{msg}"
      # Define a timeout
      after 1000 -> IO.puts "Nothing received"
    end

    # Send and receive multiple messages
    send(pid, {:french, "Bonjour"})
    send(pid, {:english, "Hello"})
    send(pid, {:spanish, "Hola"})
    count = 3
    receive_multiple_messages(count)
  end

  # ***** RECEIVE MULTIPLE MESSAGES *****
  def receive_multiple_messages(count) do
    # Base case
    if count == 0 do
      IO.puts "Done"
      :ok
    end
    # Recursive case
    receive do
      {:french, msg} ->
        IO.puts "French : #{msg}"
        receive_multiple_messages(count - 1) # Recursive call
      {:english, msg} ->
        IO.puts "English : #{msg}"
        receive_multiple_messages(count - 1) # Recursive call
      {:spanish, msg} ->
        IO.puts "Spanish : #{msg}"
        receive_multiple_messages(count - 1) # Recursive call
    # Define a timeout to avoid infinite loop
    after 1000 -> IO.puts "Nothing received"
    end
  end
end
