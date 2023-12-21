# 9. Pack consecutive duplicates of list elements into sublists. (medium)

defmodule NinetyNineElixirProblems.Solutions.Solution9 do
  alias NinetyNineElixirProblems.Solutions.Solution4, as: Length

  def pack(list, ant \\ nil, acc \\ [], pack \\ [])

  def pack([head | tail], ant, acc, pack) do
    if head == ant do
      pack(tail, head, acc, pack ++ [head])
    else
      if Length.length(pack) == 0 do
        pack(tail, head, acc, [head])
      else
        pack(tail, head, acc ++ [pack], [head])
      end
    end
  end

  def pack([], _ant, acc, pack), do: acc ++ [pack]
end
