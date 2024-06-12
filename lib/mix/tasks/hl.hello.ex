defmodule Mix.Tasks.Hl.Hello do
  use Mix.Task

  @shortdoc "A simple hello task"

  def run(_) do
    Mix.shell().info("Simple hello from hello-libary")
  end
end
