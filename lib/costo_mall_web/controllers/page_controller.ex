defmodule CostoMallWeb.PageController do
  use CostoMallWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
