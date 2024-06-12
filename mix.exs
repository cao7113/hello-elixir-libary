defmodule Hello.MixProject do
  use Mix.Project

  def project do
    [
      app: :hello_libary,
      version: "0.1.5",
      elixir: "~> 1.16",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: "hello elixir libary",
      package: package()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {HelloLibary.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, "~> 0.11", only: :dev}
    ]
  end

  # hex package metadata as https://hex.pm/docs/publish
  def package do
    [
      # must
      licenses: ["Apache-2.0"],
      maintainers: ["cao7113"],
      links: %{
        "GitHub" => "https://github.com/cao7113/hello-libary",
        "Docs" => "https://hexdocs.pm/hello_libary/"
      }
      # optional
      # files: []
    ]
  end
end
