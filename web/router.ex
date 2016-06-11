defmodule Website.Router do
  use Website.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Website do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/proposals/thanks", PageController, :thanks_proposal
    get "/subscribe/thanks", PageController, :thanks_subscription

    resources "/subscribe", SubscribeController, only: [:create]
    get "/subscribe/errors", SubscribeController, :errors

    resources "/proposals", ProposalController, only: [:new, :create]
  end

  # Other scopes may use custom stacks.
  # scope "/api", Website do
  #   pipe_through :api
  # end
end
