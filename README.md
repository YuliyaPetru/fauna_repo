# FaunaRepo

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `fauna_repo` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:fauna_repo, "~> 0.1.0"}
  ]
end
```

Make sure to add your Fauna key as an environment variable or export it in the shell. 

```sh
export FAUNA_KEY="fnAxxxx"
```

Query Fauna database in your application: 

```elixir
defmodule Myapp do
  use Application
  alias Faunarepo

  def start(_type, _args) do
    
    todos = Faunarepo.query("Todo.all()")
    json_string = Jason.encode!(todos)
    IO.puts(json_string)

    Supervisor.start_link([], strategy: :one_for_one)
  end
end
```
