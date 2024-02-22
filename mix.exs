defmodule FaunaRepo.MixProject do
  use Mix.Project

  @description "A repository which allows access use of the Fauna v10 database in Elixir and Phoenix through the use of Fauna API"
  @source_url "https://github.com/YuliyaPetru/fauna_repo.git"

  def project do
    [
      app: :fauna_repo,
      version: "0.1.0",
      elixir: "~> 1.16",
      name: "Fauna Repo",
      description: @description,
      source_url: @source_url,
      package: package(),
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:httpoison, "~> 2.2"},
      {:jason, "~> 1.4"}
    ]
  end

  defp package do
    [
      maintainers: ["Yuliya Petrunkina", "Shadid Haque"],
      licenses: ["MIT"],
      links: %{"GitHub" => @source_url}
    ]
  end
end
