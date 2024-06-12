defmodule Mix.Tasks.Hl.Hello do
  @shortdoc "A simple hello task"
  use Mix.Task

  @impl Mix.Task
  def run(_) do
    Mix.shell().info("Simple hello from hello-libary")
  end
end
