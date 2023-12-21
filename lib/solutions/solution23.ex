# 23. Extract a given number of randomly selected elements from a list. (medium)

# If first argument is greater than second, produce a list in decreasing order.

defmodule NinetyNineElixirProblems.Solutions.Solution23 do
  alias NinetyNineElixirProblems.Solutions.Solution4, as: ListSize
  alias :rand, as: Rand

  def call(list, amount, acc \\ [])
  def call(list, amount, _acc) when amount >= length(list), do: list
  def call([], _amount, acc), do: acc
  def call(_list, 0, acc), do: acc

  def call(list, amount, acc) do
    {picked_element, rest_list} = pick_at(list, Rand.uniform(ListSize.call(list) - 1))

    call(rest_list, amount - 1, [picked_element | acc])
  end

  defp pick_at(list, index, acc \\ [])
  defp pick_at([h | t], 0, acc), do: {h, t ++ acc}
  defp pick_at([h | t], index, acc), do: pick_at(t, index - 1, [h | acc])

  # Math.
  # def call(from, to), do: range(from, to, [], get_signal(from, to))
end
