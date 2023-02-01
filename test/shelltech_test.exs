defmodule ShelltechTest do
  use ExUnit.Case
  doctest Shelltech

  test "greets the world" do
    assert Shelltech.hello() == :world
  end
end
