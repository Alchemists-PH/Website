defmodule Website.ProposalControllerTest do
  use Website.ConnCase

  alias Website.Proposal
  @valid_attrs %{bio: "some content", description: "some content", duration: "some content", email: "some content", extra_info: "some content", name: "some content", title: "some content"}
  @invalid_attrs %{}

  test "renders form for new resources", %{conn: conn} do
    conn = get conn, proposal_path(conn, :new)
    assert html_response(conn, 200) =~ "Tell us about your proposal"
  end

  test "does not create resource and renders errors when data is invalid", %{conn: conn} do
    conn = post conn, proposal_path(conn, :create), proposal: @invalid_attrs
    assert html_response(conn, 200) =~ "Tell us about your proposal"
  end
end
