# 3. Find the K'th element of a list. (easy)

defmodule NinetyNineElixirProblems.Solutions.Solution3 do
  def call(_list, 0), do: nil
  def call([], _nth), do: nil
  def call([head | _tail], 1), do: head
  def call([_head | tail], nth), do: call(tail, nth - 1)
end
