defmodule Filer.PageController do
  use Filer.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
