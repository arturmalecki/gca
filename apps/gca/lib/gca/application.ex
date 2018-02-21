defmodule Gca.Application do
  @moduledoc """
  The Gca Application Service.

  The gca system business domain lives in this application.

  Exposes API to clients such as the `GcaWeb` application
  for use in channels, controllers, and elsewhere.
  """
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    Supervisor.start_link([
      supervisor(Gca.Repo, []),
    ], strategy: :one_for_one, name: Gca.Supervisor)
  end
end
