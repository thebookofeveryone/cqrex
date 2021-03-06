defmodule Cqrex.Mixfile do
  use Mix.Project

  def project do
    [app: :cqrex,
     version: "0.0.1",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps,
     description: description,
     package: package,
     test_coverage: [tool: ExCoveralls],
     preferred_cli_env: ["coveralls": :test, "coveralls.detail": :test, "coveralls.post": :test],
   ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger],
      mod: {Cqrex, []}]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:excoveralls, "~> 0.4", only: :test},
      {:exrm, "~> 1.0.0-rc7"},
      {:exprof, "~> 0.2.0", only: :test}
    ]
  end

  defp description do
    """
    A CQRS implementation in Elixir
    """
  end

  defp package do
    [
      name: :cqrex,
      files: ["lib", "priv", "mix.exs", "README*", "readme*", "LICENSE*", "license*"],
      maintainers: ["Mohamed Boudra"],
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/thebookofeveryone/cqrex",
      }
    ]
  end

end
