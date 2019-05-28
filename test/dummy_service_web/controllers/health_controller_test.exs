defmodule DummyServiceWeb.HealthControllerTest do
  use DummyServiceWeb.ConnCase

  test "GET /health", %{conn: conn} do
    conn = get(conn, "/health")
    assert json_response(conn, 200) == %{
      "everything_is" => "ok"
    }
  end
end
