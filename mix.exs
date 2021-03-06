defmodule AirdatesApi.MixProject do
  use Mix.Project

  def project do
    [
      app: :airdates_api,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {AirdatesApi, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:floki, "~> 0.20.0"},
      {:tesla, "~> 1.0.0"},
      {:credo, "~> 0.9.1", only: [:dev, :test], runtime: false},
      {:ex_doc, "~> 0.18.0", only: :dev, runtime: false},
      {:cowboy, "~> 2.0"},
      {:plug_cowboy, "~> 2.0"},
      {:plug, "~> 1.0"},
      {:absinthe, "~> 1.4.0"},
      {:absinthe_plug, "~> 1.4.0"},
      {:poison, "~> 1.3.0"},
      {:elixir_uuid, "~> 1.2"},
      {:jason, "~> 1.3.0"}
    ]
  end
end
