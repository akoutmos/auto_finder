defmodule AutoFinderWeb.UsedCarController do
  use AutoFinderWeb, :controller

  alias AutoFinder.UsedCars

  require Logger

  def index(conn, params) do
    results = UsedCars.get_used_cars(params)

    if results == [] do
      Logger.info(
        "Search #{inspect(params)} yielded no results...perhaps we should suggest something similar"
      )
    else
      Logger.info("Search #{inspect(params)} yielded some results...customer should be happy")
    end

    json(conn, results)
  end
end
