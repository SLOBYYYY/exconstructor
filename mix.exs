defmodule ExConstructor.Mixfile do
  use Mix.Project

  def project do
    [app: :exconstructor,
     version: "1.1.0",
     description: description,
     package: package,
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     docs: [main: ExConstructor],
     test_coverage: [tool: ExCoveralls],
     deps: deps]
  end

  def description do
    ~S"""
    ExConstructor generates constructor functions for your structs, handling
    map-vs-keyword-list, string-vs-atom-keys, and camelCase-vs-under_score
    issues automatically.
    """
  end

  def package do
    [
      maintainers: ["Máj Szabolcs", "SLOBYYYY"],
      licenses: ["MIT"],
      links: %{GitHub: "https://github.com/SLOBYYYY/exconstructor"}
    ]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    [
      {:ex_spec, github: "appcues/ex_spec", tag: "1.1.0-elixir13", only: :test},
      {:excoveralls, "~> 0.4.3", only: :test},
      {:coverex, "~> 1.4.7", only: :test},
      {:earmark, "~> 0.1", only: :dev},
      {:ex_doc, "~> 0.11", only: :dev},
    ]
  end
end

