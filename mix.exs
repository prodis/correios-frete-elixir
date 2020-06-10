defmodule Correios.Frete.MixProject do
  use Mix.Project

  @app :correios_frete
  @name "Correios Frete"
  @repo "https://github.com/prodis/correios-frete-elixir"
  @version "0.0.0"

  def project do
    [
      app: @app,
      name: @name,
      version: @version,
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: description(),
      dialyzer: dialyzer(),
      docs: docs(),
      package: package(),
      preferred_cli_env: preferred_cli_env(),
      test_coverage: [tool: ExCoveralls]
    ]
  end

  def application, do: []

  defp deps do
    [
      # Development
      {:credo, "~> 1.4", only: :dev, runtime: false},
      {:dialyxir, "~> 1.0.0", only: :dev, runtime: false},
      {:ex_doc, "~> 0.22", only: :dev, runtime: false},

      # Test
      {:excoveralls, "~> 0.12", only: :test}
    ]
  end

  defp description do
    """
    UNDER DEVELOPMENT
    """
  end

  defp dialyzer do
    [
      plt_file: {:no_warn, "priv/plts/dialyzer.plt"}
    ]
  end

  defp docs do
    [
      main: "readme",
      extras: ~w(README.md CHANGELOG.md),
      source_ref: @version,
      source_url: @repo,
      canonical: "http://hexdocs.pm/correios-frete"
    ]
  end

  defp package do
    [
      files: ~w(lib mix.exs README.md CHANGELOG.md LICENSE),
      maintainers: ["Fernando Hamasaki de Amorim"],
      licenses: ["Apache 2.0"],
      links: %{"GitHub" => @repo}
    ]
  end

  defp preferred_cli_env do
    [
      coveralls: :test,
      "coveralls.detail": :test,
      "coveralls.post": :test,
      "coveralls.html": :test,
      "coveralls.travis": :test
    ]
  end
end
