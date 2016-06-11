defmodule Website.PageController do
  use Website.Web, :controller

  alias Website.Subscriber

  def index(conn, _params) do
    render conn, "index.html", changeset: Subscriber.changeset(%Subscriber{})
  end

  def thanks_proposal(conn, _params) do
    render(conn, "thanks_proposal.html")
  end

  def thanks_subscription(conn, _params) do
    render(conn, "thanks_subscription.html")
  end

end
