# 24. Lotto: Draw N different random numbers from the set 1..M. (easy)

# The selected numbers shall be returned in a list.

defmodule NinetyNineElixirProblems.Solutions.Solution24 do
  alias :rand, as: Rand

  def lotto_select(size, limit, acc \\ [])
  def lotto_select(0, _limit, acc), do: acc

  def lotto_select(size, limit, acc) do
    number = get_new_number(acc, limit)

    lotto_select(size - 1, limit, acc ++ [number])
  end

  defp get_new_number(numbers, limit) do
    number = Rand.uniform(limit)
    exists = Enum.find(numbers, &(&1 == number))

    if exists == nil do
      number
    else
      get_new_number(numbers, limit)
    end
  end
end
