defmodule Hello.MixProject do
  use Mix.Project

  def project do
    [
      app: :hello_libary,
      version: "0.1.6",
      elixir: "~> 1.16",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      name: "HelloLibary",
      description: "hello elixir libary",
      source_url: "https://github.com/cao7113/hello-libary",
      homepage_url: "https://github.com/cao7113/hello-libary",
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
      # https://hexdocs.pm/ex_doc/readme.html
      {:ex_doc, "~> 0.31", only: :dev, runtime: false}
    ]
  end

  # hex package metadata as https://hex.pm/docs/publish
  def package do
    [
      # This option is only needed when you don't want to use the OTP application name
      # name: "hello_libary",
      licenses: ["Apache-2.0"],
      maintainers: ["cao7113"],
      links: %{
        "GitHub" => "https://github.com/cao7113/hello-libary",
        "Docs" => "https://hexdocs.pm/hello_libary/"
      }
    ]
  end
end
