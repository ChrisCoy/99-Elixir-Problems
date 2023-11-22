# 9. Pack consecutive duplicates of list elements into sublists. (medium)

defmodule NinetyNineElixirProblems.Solutions.Solution9 do
  alias NinetyNineElixirProblems.Solutions.Solution4, as: Lenght
  def call([head | tail], ant \\ nil, acc \\ [], pack \\ []) do
    if head == ant do
      call(tail, head, acc, pack ++ [head])
    else
      if Lenght.call(pack) == 0 do
        call(tail, head, acc, [head])
      else
        call(tail, head, acc ++ [pack], [head])
      end
    end
  end

  def call([], _ant, acc, pack), do: acc ++ [pack]

  # def call([], _ant, acc), do: acc

  # def call([head | tail], ant \\ nil, acc \\ []) do
  #   if head == ant do
  #     # [acc_h, acc_t] = acc
  #     call(tail, head, clone_last(acc, acc))
  #   else
  #     call(tail, head, acc ++ [[head]])
  #   end
  # end

  # def clone_last([head], list), do: [list]
  # def clone_last([head | tail], list), do: clone_last(tail, list)

  # def call([], acc), do: acc
  # def call([head | tail], acc \\ []) do
  #   el = pack(tail, head, [head])
  #   IO.inspect(el)
  #   el
  # end

  # defp pack([], ant, pack), do: call([], pack)
  # defp pack([head | tail], ant, acc) do
  #   if head == ant do
  #     pack(tail, ant, acc ++ [ant])
  #   else
  #     call(tail, acc)
  #   end
  # end

  # def call([head | tail], acc \\ [], pack \\ []) do
  #   IO.inspect(pack, label: "pack")
  #   IO.inspect([head | tail], label: "list")

  #   with [acc_h | acc_t] <- pack do
  #     if head == acc_h do
  #       call(tail, acc, [acc_h | acc_t] ++ [head])
  #     else
  #       call(tail, acc ++ [pack], [])
  #     end
  #   else
  #     _ -> call(tail, acc, [head])
  #   end
  # end

  # defp pack([head | tail])
end
