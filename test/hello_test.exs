defmodule HelloTest do
  use ExUnit.Case
  doctest Hello
  doctest Hello.World

  test "greets the world" do
    assert Hello.hello() == :world
  end
end
