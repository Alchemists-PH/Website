defmodule Website.PageControllerTest do
  use Website.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "Philippine Elixir/Erlang User Group"
  end
end
