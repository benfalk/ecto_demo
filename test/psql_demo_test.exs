defmodule PsqlDemoTest do
  use ExUnit.Case
  doctest PsqlDemo

  test "greets the world" do
    assert PsqlDemo.hello() == :world
  end
end
