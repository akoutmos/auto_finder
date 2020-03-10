defmodule AutoFinder.Repo.Migrations.UsedCars do
  use Ecto.Migration

  def change do
    create table(:used_cars) do
      add :make, :string
      add :model, :string
      add :year, :integer
      add :mileage, :integer
      add :price, :integer

      timestamps()
    end
  end
end
