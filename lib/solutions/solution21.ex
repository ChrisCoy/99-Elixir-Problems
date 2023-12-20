# 21. Insert an element at a given position into a list. (easy)

# Start counting list elements with 0. If the position is larger or equal to the length of the list,
# insert the element at the end. (The behavior is unspecified if the position is negative.)

defmodule NinetyNineElixirProblems.Solutions.Solution21 do
  def call(list, element, at, acc \\ [])
  def call([], element, _at, acc), do: acc ++ [element]
  def call(list, element, 0, acc), do: acc ++ [element] ++ list
  def call([h | t], element, at, acc), do: call(t, element, at - 1, acc ++ [h])
end
