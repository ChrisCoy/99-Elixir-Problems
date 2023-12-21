
# 1. Write a function last : 'a list -> 'a option that returns the last element of a list. (easy)

defmodule NinetyNineElixirProblems.Solutions.Solution1 do
  def last([]), do: nil
  def last([el]), do: el
  def last([_head | tail]), do: last(tail)
end
