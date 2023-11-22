# 7. Flatten a nested list structure. (medium)

defmodule NinetyNineElixirProblems.Solutions.Solution7 do
  def call([], acc), do: acc

  def call(list, acc \\ []) do
    [head | tail] = list

    case is_list(head) do
      true -> call(tail, acc ++ head)
      false -> call(tail, acc ++ [head])
    end
  end
end
