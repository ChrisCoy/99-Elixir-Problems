# 5. Reverse a list. (easy)

defmodule NinetyNineElixirProblems.Solutions.Solution5 do
  def rev(list, reverse \\ [])
  def rev([], reverse), do: reverse
  def rev([head | tail], reverse), do: rev(tail, [head] ++ reverse)
end
