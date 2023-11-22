# 10. Run-length encoding of a list. (easy)

defmodule NinetyNineElixirProblems.Solutions.Solution11 do
  def call([], map) do
    Enum.reduce(map, [], fn {value, key}, acc ->
      if value == 1 do
        acc ++ [key]
      else
        acc ++ [{key, value}]
      end
    end)
  end

  def call([head | tail], map \\ %{}) do
    new_map = Map.update(map, head, 1, fn n -> n + 1 end)
    call(tail, new_map)
  end
end
