defmodule Website.MeetupController do
  use Website.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

end
