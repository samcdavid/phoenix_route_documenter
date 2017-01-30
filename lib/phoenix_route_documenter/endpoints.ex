defmodule PhoenixRouteDocumenter.Endpoints do
  alias Phoenix.Router.Route

  @spec listing(module) :: %{paths: [%{method: binary(), path: binary()}]}
  def listing(router) do
    build(router.__routes__())
  end

  defp build(routes) do
    paths = for r <- routes, r, do: route_schema(r)

    %{paths: paths}
  end

  defp route_schema(%Route{path: path, verb: verb}) do
    method =
      verb
      |> Atom.to_string()
      |> String.upcase()

    %{method: method, path: path}
  end
end
