defmodule Website.PageController do
  use Website.Web, :controller

  alias Website.Subscriber

  def index(conn, _params) do
    render conn, "index.html", changeset: Subscriber.changeset(%Subscriber{})
  end
end
