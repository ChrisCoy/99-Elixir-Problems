
# 1. Write a function last : 'a list -> 'a option that returns the last element of a list. (easy)

defmodule NinetyNineElixirProblems.Solutions.Solution1 do
  def call([]), do: nil
  def call([el]), do: el
  def call([_head | tail]), do: call(tail)
end
