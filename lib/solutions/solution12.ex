# 12. Decode a run-length encoded list. (medium)

# Given a run-length code list generated as specified in the previous problem,
# construct its uncompressed version.

defmodule NinetyNineElixirProblems.Solutions.Solution12 do
  def decode(list, acc)
  def decode([], acc), do: acc

  def decode([head | tail], acc) do
    case head do
      {value, key} -> decode(tail, acc ++ add_n_times([], key, value))
      el -> decode(tail, acc ++ add_n_times([], el, 1))
    end
  end

  defp add_n_times(list, _el, 0), do: list
  defp add_n_times(list, el, n), do: add_n_times(list ++ [el], el, n - 1)
end
