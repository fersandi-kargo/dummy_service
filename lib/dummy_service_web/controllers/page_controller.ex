defmodule DummyServiceWeb.PageController do
  use DummyServiceWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
