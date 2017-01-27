defmodule PhoenixRouteDocumenter.Endpoints do
  alias Phoenix.Router.Route

  def for(router) do
    router.__routes__()
    |> build()
  end

  defp build(routes) do
    paths = Enum.map routes, fn(route) ->
      route_schema(route)
    end

    %{ paths: paths }
  end

  defp route_schema(%Route{path: path, verb: verb}) do
    method = verb |> Atom.to_string() |> String.upcase()
    %{method: method, path: path}
  end
end
