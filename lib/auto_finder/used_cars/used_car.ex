defmodule AutoFinder.UsedCars.UsedCar do
  use Ecto.Schema

  import Ecto.Changeset

  @fields ~w(make model year mileage price)a

  @derive {Jason.Encoder, only: @fields}

  schema "used_cars" do
    field :make, :string
    field :model, :string
    field :year, :integer
    field :mileage, :integer
    field :price, :integer

    timestamps()
  end

  def changeset(used_car, attrs \\ %{}) do
    used_car
    |> cast(attrs, @fields)
    |> validate_required(@fields)
  end
end
