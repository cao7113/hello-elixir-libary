defmodule HelloLibaryTest do
  use ExUnit.Case
  doctest HelloLibary

  test "hello world" do
    assert HelloLibary.hello() == :world
  end
end
