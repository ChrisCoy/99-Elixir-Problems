# 6. Find out whether a list is a palindrome. (easy)

defmodule NinetyNineElixirProblems.Solutions.Solution6 do
  alias NinetyNineElixirProblems.Solutions.Solution5
  def call(list), do: Solution5.call(list) == list
end
