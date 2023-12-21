# 16. Drop every N'th element from a list. (medium)

defmodule NinetyNineElixirProblems.Solutions.Solution16 do
  def drop(list, nth, cont \\ 1, list \\ [])
  def drop([], _nth, _cont, list), do: list

  def drop([head | tail], nth, cont, list) do
    if rem(cont, nth) == 0 do
      drop(tail, nth, cont + 1, list)
    else
      drop(tail, nth, cont + 1, list ++ [head])
    end
  end
end
