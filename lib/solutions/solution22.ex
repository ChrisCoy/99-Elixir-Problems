# 22. Create a list containing all integers within a given range. (easy)

# If first argument is greater than second, produce a list in decreasing order.

defmodule NinetyNineElixirProblems.Solutions.Solution22 do
  def call(from, to), do: range(from, to, [], get_signal(from, to))

  defp range(from, from, acc, _signal), do: acc ++ [from]
  defp range(from, to, acc, signal), do: range(from + signal, to, acc ++ [from], signal)

  defp get_signal(from, to), do: if(from < to, do: 1, else: -1)



  ############## SLOW IMPLEMENTATION ##############
  # it is slow because it have to calculate the signal every time it calls
  # def call(from, to, acc \\ [])
  # def call(from, from, acc), do: acc ++ [from]

  # def call(from, to, acc) do
  #   signal = if from < to, do: 1, else: -1

  #   call(from + signal, to, acc ++ [from])
  # end
end
