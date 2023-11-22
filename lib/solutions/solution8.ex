# 8. Eliminate consecutive duplicates of list elements. (medium)

defmodule NinetyNineElixirProblems.Solutions.Solution8 do

  def call([], _ant, acc), do: acc

  def call([head | tail], ant \\ nil, acc \\ []) do
    if ant == head do
      call(tail, ant, acc)
    else
      call(tail, head, acc ++ [head])
    end
  end
end
