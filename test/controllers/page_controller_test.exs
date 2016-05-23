defmodule Website.PageControllerTest do
  use Website.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "Alchemist PH: Philippine Elixir/Erlang User Group"
  end
end
