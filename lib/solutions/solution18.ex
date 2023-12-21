# 18. Extract a slice from a list. (medium)

# Given two indices, i and k, the slice is the list containing the elements between the
# i'th and k'th element of the original list (both limits included). Start counting the
# elements with 0 (this is the way the List module numbers elements).

defmodule NinetyNineElixirProblems.Solutions.Solution18 do
  def slice(list, start, ending), do: till_start_zero(list, start, ending)

  defp till_start_zero(list, 0, ending), do: till_ending_zero(list, ending)
  defp till_start_zero([_h | t], start, ending), do: till_start_zero(t, start - 1, ending)

  defp till_ending_zero(a, b, c \\ [])
  defp till_ending_zero(_list, 1, acc), do: acc
  defp till_ending_zero([h | t], ending, acc), do: till_ending_zero(t, ending - 1, acc ++ [h])
end
