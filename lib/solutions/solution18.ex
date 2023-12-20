# 17. Split a list into two parts; the length of the first part is given. (easy)

defmodule NinetyNineElixirProblems.Solutions.Solution18 do
  #

  def call(list, start, ending), do: till_start_zero(list, start, ending)

  def till_start_zero(list, 0, ending), do: till_ending_zero(list, ending)
  def till_start_zero([_h | t], start, ending), do: till_start_zero(t, start - 1, ending)

  def till_ending_zero(a, b, c \\ [])
  def till_ending_zero(_list, 1, acc), do: acc
  def till_ending_zero([h | t], ending, acc), do: till_ending_zero(t, ending - 1, acc ++ [h])
end
