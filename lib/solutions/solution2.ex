
# 2. Find the last but one (last and penultimate) elements of a list. (easy)

defmodule NinetyNineElixirProblems.Solutions.Solution2 do
  def call([]), do: nil
  def call([el]), do: el
  def call([_head | tail]), do: call(tail)
end
