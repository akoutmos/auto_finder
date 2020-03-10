alias AutoFinder.{Repo, UsedCars.UsedCar}

car_selection = [
  {"Acura", ~w(ILX TLX RLX RDX MDX NSX), 15_000..35_000},
  {"Honda", ~w(Accord Civic CR-V Odyssey Passport), 10_000..25_000},
  {"Nissan", ~w(GT-R 370Z Titan Leaf Sentra), 25_000..50_000},
  {"Mazda", ~w(MX-5 CX-3 CX5 CX-9), 15_000..25_000},
  {"Chevrolet", ~w(Camaro Corvette Colorado Silverado), 25_000..50_000},
  {"Ford", ~w(Escape Explorer Mustang Focus), 15_000..25_000},
  {"Audi", ~w(A4 Q3 A6 Q7 R8 S3 S4 RS5), 20_000..50_000},
  {"BMW", ~w(M2 M3 M5 X4 X7), 20_000..50_000},
  {"Subaru", ~w(Impreza Legacy Forester BRZ WRX), 15_000..25_000},
  {"Porsche", ~w(Taycan Panamera MAcan Cayenne Carrera Cayman), 40_000..70_000},
  {"Ferrari", ~w(812 F8 488 GTC4 Portofino), 150_000..250_000}
]

1..1_000
|> Enum.each(fn _ ->
  {make, models, price_range} = Enum.random(car_selection)
  model = Enum.random(models)
  price = Enum.random(price_range)
  year = Enum.random(2015..2020)
  mileage = Enum.random(10_000..60_000)

  %UsedCar{}
  |> UsedCar.changeset(%{make: make, model: model, price: price, year: year, mileage: mileage})
  |> Repo.insert!()
end)
