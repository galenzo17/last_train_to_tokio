defmodule LastTrainToTokio.Application do
  @moduledoc """
  Main OTP application supervisor for Last Train to Tokyo.

  This supervisor orchestrates all the core components of the distributed
  banking simulation system.
  """

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Main cluster supervisor will be added here
      # {LastTrainToTokio.ClusterSupervisor, []}
    ]

    opts = [strategy: :one_for_one, name: LastTrainToTokio.Supervisor]
    Supervisor.start_link(children, opts)
  end
end