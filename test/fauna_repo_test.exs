defmodule FaunaRepoTest do
  use ExUnit.Case
  doctest FaunaRepo

  test "greets the world" do
    assert FaunaRepo.hello() == :world
  end
end
