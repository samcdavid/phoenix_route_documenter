# Phoenix Route Documenter

This hex package will return a map of your Phoenix application's routes similar
to the following:

```elixir
%{
  paths: [
    %{
      method: "GET",
      path: "/path/to/thing/"
    },
    %{
      method: "GET",
      path: "/path/to/thing/:id"
    },
    %{
      method: "POST",
      path: "/path/to/thing/"
    },
    %{
      method: "PUT",
      path: "/path/to/thing/:id"
    },
  ]
}
```

This is particularly useful if you want to have an endpoint for your api that
documents all of your endpoints for you automatically.

```elixir
defmodule YourApp.RoutesController do
  use YourApp.Web, :controller

  alias YourApp.Router
  alias PhoenixRouteDocumenter.Endpoints

  def index(conn, _params) do
    endpoints = Endpoints.listing(Router)

    conn
    |> json(endpoints)
  end
end
```

## Installation

The package can be installed by adding `phoenix_route_documenter` to your list
of dependencies in `mix.exs`:

```elixir
def deps do
  [{:phoenix_route_documenter, "~> 0.1.0"}]
end
```
