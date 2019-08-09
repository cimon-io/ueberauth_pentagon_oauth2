defmodule UeberauthPentagonOauth2.Mixfile do
  use Mix.Project

  @version "0.0.1"
  @url "https://github.com/cimon-io/ueberauth_pentagon_oauth2"

  def project do
    [app: :ueberauth_pentagon_oauth2,
     version: @version,
     name: "Ueberauth PentagonOauth2 Strategy",
     package: package(),
     elixir: "~> 1.6",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     source_url: @url,
     homepage_url: @url,
     description: description(),
     deps: deps()]
  end

  def application do
    [applications: [:logger, :oauth2, :ueberauth]]
  end

  defp deps do
    [
     {:oauth2, "~> 2.0"},
     {:ueberauth, "~> 0.6"},
     {:credo, ">= 0.0.0", only: [:dev, :test], runtime: false},
     {:ex_doc, ">= 0.0.0", only: [:dev], runtime: false},
    ]
  end

  defp description do
    "An Uberauth strategy for PentagonOauth2 authentication."
  end

  defp package do
    [files: ["lib", "mix.exs"],
     maintainers: ["Serhii Konev"],
     licenses: ["MIT"],
     links: %{"GitHub": @url}]
  end
end
