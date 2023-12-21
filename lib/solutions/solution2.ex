
# 2. Find the last but one (last and penultimate) elements of a list. (easy)

defmodule NinetyNineElixirProblems.Solutions.Solution2 do
  def last_two([]), do: nil
  def last_two([first, second]), do: [first, second]
  def last_two([_head | tail]), do: last_two(tail)
end
