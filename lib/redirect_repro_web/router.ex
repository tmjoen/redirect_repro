defmodule RedirectReproWeb.Router do
  use RedirectReproWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, {RedirectReproWeb.LayoutView, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", RedirectReproWeb do
    pipe_through :browser

    live "/", PageListLive
    live "/edit", PageEditLive
  end

  # Other scopes may use custom stacks.
  # scope "/api", RedirectReproWeb do
  #   pipe_through :api
  # end
end
