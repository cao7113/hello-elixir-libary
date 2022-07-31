defmodule Hello.MixProject do
  use Mix.Project

  def project do
    [
      app: :hello_libary,
      version: "0.1.1",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Hello.Application, []}
    ]
  end

  defp description do
    """
    Hello elixir libary.
    """
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README.md"],
      maintainers: ["Cao7113"],
      licenses: ["Apache 2.0"],
      links: %{
        "GitHub" => "https://github.com/cao7113/hello-elixir-libary",
        "Docs" => "https://hexdocs.pm/hello_libary/"
      }
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
      {:ex_doc, "~> 0.11", only: :dev}
    ]
  end
end
