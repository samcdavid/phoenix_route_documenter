defmodule PhoenixRouteDocumenter.Mixfile do
  use Mix.Project

  def project do
    [
      app: :phoenix_route_documenter,
      build_embedded: Mix.env == :prod,
      deps: deps(),
      elixir: "~> 1.4",
      elixirc_paths: elixirc_paths(Mix.env),
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

  defp deps do
    [
      {:credo, "~> 0.5", only: [:dev, :test]},
      {:excoveralls, "~> 0.5", only: :test},
      {:phoenix, "~> 1.2.1"},
    ]
  end
end
