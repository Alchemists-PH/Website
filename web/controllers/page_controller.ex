defmodule Website.PageController do
  use Website.Web, :controller

  alias Website.Subscriber

  def index(conn, _params) do
    render conn, "index.html", changeset: Subscriber.changeset(%Subscriber{})
  end

  def thanks(conn, _parmas) do
    render conn, "thanks.html"
  end
end
