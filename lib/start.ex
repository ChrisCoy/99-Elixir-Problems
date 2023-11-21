defmodule Mix.Tasks.Start do
  alias NinetyNineElixirProblems.Solutions
  use Mix.Task

  @shortdoc "run the last solved problem"
  def run(_) do
    # IO.puts(Solutions.Solution1.call([1]))
    IO.puts(Solutions.Solution2.call([1]))
  end
end
