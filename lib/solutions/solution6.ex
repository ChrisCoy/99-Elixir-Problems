# 6. Find out whether a list is a palindrome. (easy)

defmodule NinetyNineElixirProblems.Solutions.Solution6 do
  alias NinetyNineElixirProblems.Solutions.Solution5, as: Reverse
  def call(list), do: Reverse.call(list) == list
end
