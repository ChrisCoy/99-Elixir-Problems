# 8. Eliminate consecutive duplicates of list elements. (medium)

defmodule NinetyNineElixirProblems.Solutions.Solution8 do
  def compress(list, ant \\ nil, acc \\ [])
  def compress([], _ant, acc), do: acc

  def compress([head | tail], ant, acc) do
    if ant == head do
      compress(tail, ant, acc)
    else
      compress(tail, head, acc ++ [head])
    end
  end
end
