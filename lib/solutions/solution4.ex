# 4. Find the number of elements of a list. (easy)

defmodule NinetyNineElixirProblems.Solutions.Solution4 do
  def length(list, size \\ 0)
  def length([], size), do: size
  def length([_head | tail], size), do: length(tail, size + 1)
end
