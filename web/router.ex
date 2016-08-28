defmodule Filer.Router do
  use Filer.Web, :router

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

  scope "/", Filer do
    pipe_through :browser

    resources "/files", ArticleController
    get "/get/*filename", ArticleController, :download
  end
end
