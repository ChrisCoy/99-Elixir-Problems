defmodule Mix.Tasks.Start do
  alias NinetyNineElixirProblems.Solutions.Solution19
  alias NinetyNineElixirProblems.Solutions.Solution18
  alias NinetyNineElixirProblems.Solutions.Solution17
  alias NinetyNineElixirProblems.Solutions.Solution16
  alias NinetyNineElixirProblems.Solutions.Solution15
  alias NinetyNineElixirProblems.Solutions.Solution14
  alias NinetyNineElixirProblems.Solutions.Solution12
  alias NinetyNineElixirProblems.Solutions.Solution11
  alias NinetyNineElixirProblems.Solutions.Solution10
  alias NinetyNineElixirProblems.Solutions.Solution9
  alias NinetyNineElixirProblems.Solutions.Solution8
  alias NinetyNineElixirProblems.Solutions
  use Mix.Task

  @shortdoc "run the last solved problem"
  def run(_) do
    # IO.inspect(Solutions.Solution1.call([1, 2, 3, 4, 5]))

    # IO.inspect(Solutions.Solution2.call([1, 2, 3, 4, 5]))

    # IO.inspect(Solutions.Solution3.call([1, 2, 3, 4, 5], 2))

    # IO.inspect(Solutions.Solution4.call([1, 2, 3, 4, 5]))

    # IO.inspect(Solutions.Solution5.call(["c", "h", "r", "i", "s"]))

    # IO.inspect(Solutions.Solution6.call(["x", "a", "m", "a", "x"]))

    # IO.inspect(Solutions.Solution7.call([1, 2, [1, 2, 3, 4, 5], 4, [1, 2]]))

    # IO.inspect(Solution8.call(["a", "a", "a", "a", "b", "c", "c", "a", "a", "d", "e", "e", "e"]))

    # IO.inspect(Solution9.call(["a", "a", "a", "a", "b", "c", "c", "a", "a", "d", "e", "e", "e"]))

    # IO.inspect(Solution10.call(["a", "a", "a", "a", "b", "c", "c", "a", "a", "d", "e", "e", "e"]))

    # IO.inspect(Solution11.call(["a", "a", "a", "a", "b", "c", "c", "a", "a", "d", "e", "e"]))

    # IO.inspect(Solution12.call([{4, "a"}, "b", {2, "c"}, {2, "a"}, "d", {4, "e"}]))

    # IO.inspect(Solution14.call(["a", "b", "c", "c", "d"]))

    # IO.inspect(Solution15.call(["a", "b", "c", "c", "d"], 2))

    # IO.inspect(Solution16.call([1, 2, 3, 4, 5, 6, 7], 2))

    # IO.inspect(Solution17.call([1, 2, 3, 4, 5, 6, 7], 10))

    # IO.inspect(Solution18.call([1, 2, 3, 4, 5, 6, 7, 8, 9], 2, 5))

    IO.inspect(Solution19.call(["a", "b", "c", "c", "d"], 2))
  end
end
