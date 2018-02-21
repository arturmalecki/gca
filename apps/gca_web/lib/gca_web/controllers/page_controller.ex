defmodule GcaWeb.PageController do
  use GcaWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
