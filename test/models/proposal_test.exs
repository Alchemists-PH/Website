defmodule Website.ProposalTest do
  use Website.ModelCase

  alias Website.Proposal

  @valid_attrs %{bio: "some content", description: "some content", duration: "some content", email: "some content", extra_info: "some content", name: "some content", title: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Proposal.changeset(%Proposal{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Proposal.changeset(%Proposal{}, @invalid_attrs)
    refute changeset.valid?
  end
end
