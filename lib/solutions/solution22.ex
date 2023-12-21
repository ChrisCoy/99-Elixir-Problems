# 22. Create a list containing all integers within a given range. (easy)

# If first argument is greater than second, produce a list in decreasing order.

defmodule NinetyNineElixirProblems.Solutions.Solution22 do
  def range(from, to), do: create_range(from, to, [], get_sign(from, to))

  defp create_range(from, from, acc, _sign), do: acc ++ [from]
  defp create_range(from, to, acc, sign), do: create_range(from + sign, to, acc ++ [from], sign)

  defp get_sign(from, to), do: if(from < to, do: 1, else: -1)

  ############## SLOW IMPLEMENTATION ##############
  # it is slow because it have to calculate the sign every time it calls
  # def call(from, to, acc \\ [])
  # def call(from, from, acc), do: acc ++ [from]

  # def call(from, to, acc) do
  #   sign = if from < to, do: 1, else: -1

  #   call(from + sign, to, acc ++ [from])
  # end
end
