# 11. Modified run-length encoding. (easy)

# Modify the result of the previous problem in such a way that if an element has no
# duplicates it is simply copied into the result list. Only elements with duplicates
# are transferred as (N E) lists.

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
