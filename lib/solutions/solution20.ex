# 20. Remove the K'th element from a list. (easy)

defmodule NinetyNineElixirProblems.Solutions.Solution20 do
  def remove_at(list, at, acc \\ [])
  def remove_at([_h | t], 0, acc), do: acc ++ t
  def remove_at([h | t], at, acc), do: remove_at(t, at - 1, acc ++ [h])
end
