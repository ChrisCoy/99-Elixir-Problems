# 3. Find the K'th element of a list. (easy)

defmodule NinetyNineElixirProblems.Solutions.Solution3 do
  def at(_list, 0), do: nil
  def at([], _nth), do: nil
  def at([head | _tail], 1), do: head
  def at([_head | tail], nth), do: at(tail, nth - 1)
end
