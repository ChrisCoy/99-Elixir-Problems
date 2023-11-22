# 10. Run-length encoding of a list. (easy)

defmodule NinetyNineElixirProblems.Solutions.Solution10 do
  def call([], map), do: Map.to_list(map)

  def call([head | tail], map \\ %{}) do
    new_map = Map.update(map, head, 1, fn n -> n + 1 end)
    call(tail, new_map)
  end
end
