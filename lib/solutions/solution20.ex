# 19. Rotate a list N places to the left. (medium)

defmodule NinetyNineElixirProblems.Solutions.Solution20 do
  def call(list, at, acc \\ [])
  def call([_h | t], 0, acc), do: acc ++ t
  def call([h | t], at, acc), do: call(t, at - 1, acc ++ [h])
end
