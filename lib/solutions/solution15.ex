# 15. Replicate the elements of a list a given number of times. (medium)

defmodule NinetyNineElixirProblems.Solutions.Solution15 do
  def call([], _times, acc), do: acc

  def call([head | tail], times, acc \\ []),
    do: call(tail, times, acc ++ replicate([], head, times))

  defp replicate(list, _el, 0), do: list
  defp replicate(list, el, n), do: replicate(list ++ [el], el, n - 1)
end
