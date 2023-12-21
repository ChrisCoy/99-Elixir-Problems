# 15. Replicate the elements of a list a given number of times. (medium)

defmodule NinetyNineElixirProblems.Solutions.Solution15 do
  def replicate(list, times, acc \\ [])
  def replicate([], _times, acc), do: acc

  def replicate([head | tail], times, acc),
    do: replicate(tail, times, acc ++ n_times([], head, times))

  defp n_times(list, _el, 0), do: list
  defp n_times(list, el, n), do: n_times(list ++ [el], el, n - 1)
end
