# 14. Duplicate the elements of a list. (easy)

defmodule NinetyNineElixirProblems.Solutions.Solution14 do
  def call([head | tail], acc \\ []), do: call(tail, acc ++ [head, head])
  def call([], acc), do: acc
end
