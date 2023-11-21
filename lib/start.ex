defmodule Mix.Tasks.Start do
  alias NinetyNineElixirProblems.Solutions
  use Mix.Task

  @shortdoc "run the last solved problem"
  def run(_) do
    # IO.inspect(Solutions.Solution1.call([1, 2, 3, 4, 5]))

    # IO.inspect(Solutions.Solution2.call([1, 2, 3, 4, 5]))

    # IO.inspect(Solutions.Solution3.call([1, 2, 3, 4, 5], 2))

    IO.inspect(Solutions.Solution4.call([1, 2, 3, 4, 5]))
  end
end
