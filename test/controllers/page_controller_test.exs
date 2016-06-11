defmodule Website.PageControllerTest do
  use Website.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "Philippine Elixir/Erlang User Group"
  end

  test "GET /", %{conn: conn} do
    conn = get conn, "/proposals/thanks"
    assert html_response(conn, 200) =~ "Your proposal has been submitted"
  end

  test "GET /", %{conn: conn} do
    conn = get conn, "/subscribe/thanks"
    assert html_response(conn, 200) =~ "Thank you for subscribing!"
  end
end
