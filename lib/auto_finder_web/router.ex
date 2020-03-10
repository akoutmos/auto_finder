defmodule AutoFinderWeb.Router do
  use AutoFinderWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", AutoFinderWeb do
    pipe_through :api

    get "/used_cars", UsedCarController, :index
  end
end
