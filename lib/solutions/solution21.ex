# 21. Insert an element at a given position into a list. (easy)

# Start counting list elements with 0. If the position is larger or equal to the length of the list,
# insert the element at the end. (The behavior is unspecified if the position is negative.)

defmodule NinetyNineElixirProblems.Solutions.Solution21 do
  def insert_at(list, element, at, acc \\ [])
  def insert_at([], element, _at, acc), do: acc ++ [element]
  def insert_at(list, element, 0, acc), do: acc ++ [element] ++ list
  def insert_at([h | t], element, at, acc), do: insert_at(t, element, at - 1, acc ++ [h])
end
