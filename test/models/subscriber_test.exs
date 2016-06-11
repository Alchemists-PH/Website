defmodule Website.SubscriberTest do
  use Website.ModelCase

  alias Website.Subscriber

  @valid_attrs %{
    email: "email@test.com",
    first_name: "alchemists",
    last_name: "ph"
  }
  @invalid_attrs %{email: "invalid email"}

  test "changeset with valid attributes" do
    changeset = Subscriber.changeset(%Subscriber{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Subscriber.changeset(%Subscriber{}, @invalid_attrs)
    refute changeset.valid?
  end
end
