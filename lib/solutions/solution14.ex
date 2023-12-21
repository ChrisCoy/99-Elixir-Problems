# 14. Duplicate the elements of a list. (easy)

defmodule NinetyNineElixirProblems.Solutions.Solution14 do
  def duplicate(list, acc \\ [])
  def duplicate([], acc), do: acc
  def duplicate([head | tail], acc), do: duplicate(tail, acc ++ [head, head])
end
