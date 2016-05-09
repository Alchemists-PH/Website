defmodule AlchemistPh.PageController do
  use AlchemistPh.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
