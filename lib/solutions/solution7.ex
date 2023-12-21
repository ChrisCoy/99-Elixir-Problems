# 7. Flatten a nested list structure. (medium)

defmodule NinetyNineElixirProblems.Solutions.Solution7 do
  def flatten(list, acc \\ [])
  def flatten([], acc), do: acc

  def flatten(list, acc) do
    [head | tail] = list

    case is_list(head) do
      true -> flatten(tail, acc ++ head)
      false -> flatten(tail, acc ++ [head])
    end
  end
end
