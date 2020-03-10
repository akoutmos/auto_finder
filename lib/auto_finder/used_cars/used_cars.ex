defmodule AutoFinder.UsedCars do
  import Ecto.Query

  alias AutoFinder.{Repo, UsedCars.UsedCar}

  def get_used_cars(query_params) do
    base_query = from(used_car in UsedCar)

    query_params
    |> Enum.reduce(base_query, &handle_query_param/2)
    |> Repo.all()
  end

  defp handle_query_param({"make", make}, acc_query) do
    from used_car in acc_query, where: ilike(used_car.make, ^make)
  end

  defp handle_query_param({"model", model}, acc_query) do
    from used_car in acc_query, where: ilike(used_car.model, ^model)
  end

  defp handle_query_param({"min_year", min_year}, acc_query) do
    from used_car in acc_query, where: used_car.year >= ^min_year
  end

  defp handle_query_param({"max_price", max_price}, acc_query) do
    from used_car in acc_query, where: used_car.price <= ^max_price
  end

  defp handle_query_param({"max_mileage", max_mileage}, acc_query) do
    from used_car in acc_query, where: used_car.mileage <= ^max_mileage
  end
end
