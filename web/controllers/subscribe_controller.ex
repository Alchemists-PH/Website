defmodule Website.SubscribeController do
  use Website.Web, :controller

  alias Website.Subscriber

  def create(conn, %{"subscriber" => subscriber_params}) do
    changeset = Subscriber.changeset(%Subscriber{}, subscriber_params)

    case Repo.insert(changeset) do
      {:ok, _product} ->
        conn
        |> put_flash(:info, "Thank you for subscribing!")
        |> redirect(to: page_path(conn, :thanks_subscription))
      {:error, changeset} ->
        conn
        |> put_flash(:error, changeset)
        |> render("errors.html", changeset: changeset)
    end
  end

  def errors(conn, _params) do
    render(conn, "errors.html")
  end
end

