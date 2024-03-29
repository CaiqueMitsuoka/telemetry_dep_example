defmodule TelemetryDepExample do
  use Application

  def start(_type, _args) do
    children = [
      {Telemetry.Poller, []}
    ]

    opts = [strategy: :one_for_one, name: Utils.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
