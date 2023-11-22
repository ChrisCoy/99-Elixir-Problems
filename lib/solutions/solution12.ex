# 10. Run-length encoding of a list. (easy)

defmodule NinetyNineElixirProblems.Solutions.Solution12 do
  # def call([], map) do
  #   Enum.reduce(map, [], fn {key, value}, acc ->
  #     if value == 1 do
  #       acc ++ [key]
  #     else
  #       acc ++ [{key, value}]
  #     end
  #   end)
  # end

  def call([], acc), do: acc

  def call([head | tail], acc \\ []) do
    case head do
      {value, key} -> call(tail, acc ++ add_n_times([], key, value))
      el -> call(tail, acc ++ add_n_times([], el, 1))
    end
  end

  defp add_n_times(list, el, 0), do: list
  defp add_n_times(list, el, n), do: add_n_times(list ++ [el], el, n - 1)
end
