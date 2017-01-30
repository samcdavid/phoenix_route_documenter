defmodule PhoenixRouteDocumenter.Mixfile do
  use Mix.Project

  def project do
    [
      app: :phoenix_route_documenter,
      build_embedded: Mix.env == :prod,
      description: description(),
      deps: deps(),
      elixir: "~> 1.4",
      elixirc_paths: elixirc_paths(Mix.env),
      package: package(),
      preferred_cli_env: [coveralls: :test],
      start_permanent: Mix.env == :prod,
      test_coverage: [tool: ExCoveralls],
      version: "0.1.0",
    ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger]]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  defp description do
    """
    A package for reading a Phoenix Route Module and generating a map from the
    output that can be serialized to JSON.
    """
  end

  defp deps do
    [
      {:credo, "~> 0.5", only: [:dev, :test]},
      {:excoveralls, "~> 0.5", only: :test},
      {:ex_doc, ">= 0.0.0", only: :dev},
      {:phoenix, "~> 1.2.1"},
    ]
  end

  defp package do
    [
      files: ["lib", "README*", "LICENSE*", "mix.exs"],
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/samcdavid/phoenix_route_documenter",
      },
      maintainers: ["Sam McDavid"],
    ]
  end
end
