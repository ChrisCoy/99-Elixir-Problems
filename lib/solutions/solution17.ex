# 17. Split a list into two parts; the length of the first part is given. (easy)

defmodule NinetyNineElixirProblems.Solutions.Solution17 do
  def call([], _nth, _cont, list), do: list

  def call([], _length, acc \\ []), do: [acc, []]
  def call(list, 0, acc), do: [acc, list]
  def call([h | t], length, acc), do: call(t, length - 1, acc ++ [h])
end
