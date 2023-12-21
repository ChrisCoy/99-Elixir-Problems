# 17. Split a list into two parts; the length of the first part is given. (easy)

defmodule NinetyNineElixirProblems.Solutions.Solution17 do
  def split(list, length, acc \\ [])
  def split([], _length, acc), do: [acc, []]
  def split(list, 0, acc), do: [acc, list]
  def split([h | t], length, acc), do: split(t, length - 1, acc ++ [h])
end
