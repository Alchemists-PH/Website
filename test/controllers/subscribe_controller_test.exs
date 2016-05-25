defmodule Website.SubscribeControllerTest do
  use Website.ConnCase
  alias Website.Subscriber

  test "creates subscription with valid data", %{conn: conn} do
    subscriber = %{first_name: "First",
                   last_name: "Last Name",
                   email: "email@test.com"}

    conn = post conn, subscribe_path(conn, :create), subscriber: subscriber

    assert redirected_to(conn) == subscribe_path(conn, :index)
    assert Repo.get_by(Subscriber, email: subscriber.email)
  end

  test "creates subscription with invalid data", %{conn: conn} do
    conn = post conn, subscribe_path(conn, :create), subscriber: %{}
    assert html_response(conn, 200) =~ "Oops, something went wrong"
  end
end
