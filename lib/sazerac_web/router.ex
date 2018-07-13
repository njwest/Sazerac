defmodule SazeracWeb.Router do
  use SazeracWeb, :router

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

  scope "/", SazeracWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  # For the GraphQL Endpoint 
  forward "/graphql",
  Absinthe.Plug,
  schema: SazeracWeb.Schema

  # For the GraphiQL interactive interface :D
  forward "/graphiql",
  Absinthe.Plug.GraphiQL,
  schema: SazeracWeb.Schema,
  interface: :simple
end
