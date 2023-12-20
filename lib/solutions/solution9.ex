# 9. Pack consecutive duplicates of list elements into sublists. (medium)

defmodule NinetyNineElixirProblems.Solutions.Solution9 do
  alias NinetyNineElixirProblems.Solutions.Solution4, as: Length
  def call([head | tail], ant \\ nil, acc \\ [], pack \\ []) do
    if head == ant do
      call(tail, head, acc, pack ++ [head])
    else
      if Length.call(pack) == 0 do
        call(tail, head, acc, [head])
      else
        call(tail, head, acc ++ [pack], [head])
      end
    end
  end

  def call([], _ant, acc, pack), do: acc ++ [pack]
end
