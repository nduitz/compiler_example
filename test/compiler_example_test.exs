defmodule CompilerExampleTest do
  use ExUnit.Case
  doctest CompilerExample

  test "greets the world" do
    assert CompilerExample.hello() == :world
  end
end
