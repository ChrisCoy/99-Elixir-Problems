# 25. Generate a random permutation of the elements of a list. (easy)

defmodule NinetyNineElixirProblems.Solutions.Solution25 do
  import NinetyNineElixirProblems.Solutions.Solution23
  alias NinetyNineElixirProblems.Solutions.Solution4
  # alias :rand, as: Rand

  def permutation(list), do: rand_select(list, Solution4.length(list))
end
