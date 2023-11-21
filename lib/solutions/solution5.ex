# 5. Reverse a list. (easy)

defmodule NinetyNineElixirProblems.Solutions.Solution5 do
  def call([], reverse), do: reverse
  def call([head | tail], reverse \\ []), do: call(tail, [head] ++ reverse)
end
