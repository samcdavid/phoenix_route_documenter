defmodule DemoRouter do
  alias Phoenix.Router.Route

  def __routes__() do
    [
      %Route{path: "/path/to/thing", verb: :get},
      %Route{path: "/path/to/thing/:id", verb: :get},
      %Route{path: "/path/to/thing", verb: :post},
      %Route{path: "/path/to/thing/:id", verb: :put},
      %Route{path: "/path/to/thing/:id", verb: :delete},
    ]
  end
end
