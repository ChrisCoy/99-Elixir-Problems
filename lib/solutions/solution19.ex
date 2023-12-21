# 19. Rotate a list N places to the left. (medium)

defmodule NinetyNineElixirProblems.Solutions.Solution19 do
  alias NinetyNineElixirProblems.Solutions.Solution18, as: ListSlice
  alias NinetyNineElixirProblems.Solutions.Solution4, as: ListSize

  def rotate(list, 0), do: list

  def rotate(list, amount) do
    amount = get_amount(list, amount)

    if amount > 0 do
      positive_amount(list, amount)
    else
      negative_amount(list, amount)
    end
  end

  defp get_amount(list, amount), do: rem(amount, ListSize.length(list))

  defp positive_amount(list, amount) do
    sliced = ListSlice.slice(list, 0, amount + 1)
    rest = ListSlice.slice(list, amount, ListSize.length(list) - 1)

    rest ++ sliced
  end

  defp negative_amount(list, amount) do
    sliced = ListSlice.slice(list, ListSize.length(list) + amount, ListSize.length(list) - 2)
    rest = ListSlice.slice(list, 0, ListSize.length(list) + amount + 1)

    sliced ++ rest
  end
end
