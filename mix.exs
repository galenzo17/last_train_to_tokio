defmodule LastTrainToTokio.MixProject do
  use Mix.Project

  def project do
    [
      app: :last_train_to_tokio,
      version: "0.1.0",
      elixir: "~> 1.18",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {LastTrainToTokio.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # Will add more dependencies as needed when Erlang modules are available
      # {:faker, "~> 0.18"},
      # {:stream_data, "~> 1.1"},
      # {:telemetry, "~> 1.2"},
      # {:jason, "~> 1.4"}
    ]
  end
end
