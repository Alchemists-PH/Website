defmodule Website.SubscribeController do
  use Website.Web, :controller

  alias Website.Subscriber

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def create(conn, %{"subscriber" => subscriber_params}) do
    changeset = Subscriber.changeset(%Subscriber{}, subscriber_params)

    case Repo.insert(changeset) do
      {:ok, _product} ->
        redirect(conn, to: subscribe_path(conn, :index))
      {:error, changeset} ->
        conn
        |> put_flash(:error, changeset)
        |> render("index.html", changeset: changeset)
    end
  end
end

