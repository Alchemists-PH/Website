defmodule Website.ProposalTest do
  use Website.ModelCase

  alias Website.Proposal

  @valid_attrs %{
    bio: "some bio",
    description: "some description",
    duration: "45 mins",
    email: "email@test.com",
    extra_info: "some info",
    name: "alchemists ph",
    title: "what makes elixir great"
  }
  @invalid_attrs %{email: "invalid email format"}

  test "changeset with valid attributes" do
    changeset = Proposal.changeset(%Proposal{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Proposal.changeset(%Proposal{}, @invalid_attrs)
    refute changeset.valid?
  end
end
