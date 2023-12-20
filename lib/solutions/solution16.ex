# 16. Drop every N'th element from a list. (medium)

defmodule NinetyNineElixirProblems.Solutions.Solution16 do
  def call([], _nth, _cont, list), do: list

  def call([head | tail], nth, cont \\ 1, list \\ []) do
    if rem(cont, nth) == 0 do
      call(tail, nth, cont + 1, list)
    else
      call(tail, nth, cont + 1, list ++ [head])
    end
  end
end
