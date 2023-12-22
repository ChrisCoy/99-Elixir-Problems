# 23. Extract a given number of randomly selected elements from a list. (medium)

# If first argument is greater than second, produce a list in decreasing order.

defmodule NinetyNineElixirProblems.Solutions.Solution23 do
  alias NinetyNineElixirProblems.Solutions.Solution4, as: ListSize
  alias :rand, as: Rand

  def rand_select(list, amount, acc \\ [])
  def rand_select([], _amount, acc), do: acc
  def rand_select(_list, 0, acc), do: acc

  def rand_select(list, amount, acc) do
    random_index = Rand.uniform(max(1, ListSize.length(list) - 1))
    {picked_element, rest_list} = pick_at(list, random_index)

    rand_select(rest_list, amount - 1, [picked_element | acc])
  end

  defp pick_at(list, index, acc \\ [])
  defp pick_at([], _index, [el]), do: {el, []}
  defp pick_at([h | t], 0, acc), do: {h, t ++ acc}
  defp pick_at([h | t], index, acc), do: pick_at(t, index - 1, [h | acc])
end
