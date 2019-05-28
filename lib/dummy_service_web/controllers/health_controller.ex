defmodule DummyServiceWeb.HealthController do
  @moduledoc """
  Controller module for health check
  """
  use DummyServiceWeb, :controller

  @doc """
  Function to handle health check request
  """
  def health(conn, _params) do

    conn
    |> put_status(200)
    |> json(%{everything_is: :ok})
  end
end
