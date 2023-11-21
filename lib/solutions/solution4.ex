# 4. Find the number of elements of a list. (easy)

defmodule NinetyNineElixirProblems.Solutions.Solution4 do
  def call([], size), do: size
  def call([_head | tail], size \\ 0), do: call(tail, size + 1)
end
