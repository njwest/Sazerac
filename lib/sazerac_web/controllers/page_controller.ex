defmodule SazeracWeb.PageController do
  use SazeracWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
