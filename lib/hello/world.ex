defmodule Hello.World do
  @moduledoc """
  Hello world
  """

  @doc """
  Greet world

  ## Examples

    iex> Hello.World.greet("world")
    "Hello world!"
  """
  def greet(name \\ "world") when is_binary(name) do
    "Hello #{name}!"
  end
end
