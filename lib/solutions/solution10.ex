# 10. Run-length encoding of a list. (easy)

defmodule NinetyNineElixirProblems.Solutions.Solution10 do
  def encode(list, map \\ %{})
  def encode([], map), do: Map.to_list(map)

  def encode([head | tail], map) do
    new_map = Map.update(map, head, 1, fn n -> n + 1 end)
    encode(tail, new_map)
  end
end
