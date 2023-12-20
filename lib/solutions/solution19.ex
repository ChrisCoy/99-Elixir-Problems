# 19. Rotate a list N places to the left. (medium)

defmodule NinetyNineElixirProblems.Solutions.Solution19 do
  alias NinetyNineElixirProblems.Solutions.Solution18, as: ListSlice
  alias NinetyNineElixirProblems.Solutions.Solution4, as: ListSize

  def call(list, 0), do: list

  def call(list, amount) do
    amount = get_amount(list, amount)

    if amount > 0 do
      positive_amount(list, amount)
    else
      negative_amount(list, amount)
    end
  end

  defp get_amount(list, amount), do: rem(amount, ListSize.call(list))

  defp positive_amount(list, amount) do
    sliced = ListSlice.call(list, 0, amount + 1)
    rest = ListSlice.call(list, amount, ListSize.call(list) - 1)

    rest ++ sliced
  end

  defp negative_amount(list, amount) do
    sliced = ListSlice.call(list, ListSize.call(list) + amount, ListSize.call(list) - 2)
    rest = ListSlice.call(list, 0 , ListSize.call(list) + amount + 1)

    sliced ++ rest
  end
end
