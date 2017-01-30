defmodule PhoenixRouteDocumenter.EndpointsTest do
  use ExUnit.Case

  alias PhoenixRouteDocumenter.Endpoints

  test "returns a paths map" do

    %{paths: paths} = Endpoints.listing(DemoRouter)

    assert %{path: "/path/to/thing", method: "GET"} in paths
    assert %{path: "/path/to/thing/:id", method: "GET"} in paths
    assert %{path: "/path/to/thing", method: "POST"} in paths
    assert %{path: "/path/to/thing/:id", method: "PUT"} in paths
    assert %{path: "/path/to/thing/:id", method: "DELETE"} in paths
  end
end
