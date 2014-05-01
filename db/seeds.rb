exoplanets = [
  # // Planetarium
  ["Our Solar System", 'Adler Planetarium', 41.866333, -87.606783],
  # // Soldier Field
  ['Alpha Centauri Bb', 'Soldier Field', 41.862074, -87.616804],
  # // Navy Pier Children's Museum
  ['Tau Ceti e', "Navy Pier Children's Museum", 41.891105, -87.609497],
  # // Navy Pier Ferris Wheel
  ['Tau Ceti f', "Navy Pier Ferris Wheel", 41.891712, -87.607244],
  # // Sears Tower
  ['GJ 180 b', "Willis Tower", 41.878900, -87.635772],
  # // Merch Mart
  ['Gliese 876 d', 'Merchandise Mart', 41.888477, -87.635407],
  # // This is the one that's at DBC
  ["Gliese 682 b", "Dev Bootcamp", 41.889911, -87.637657],
  # // US Cell Field
  ['82 G. Eridani b', "US Cellular Field", 41.830273, -87.633348],
  # // Wrigley
  ['HD 40307 g', "Wrigley Field", 41.947854, -87.655642],
  # // Museum of Science and Industry
  ['HD 85512 b', "The Museum of Science and Industry", 41.790573, -87.583066]
]

exoplanets.each do |x|
  loc = Location.create!(name: x[1], latitude: x[2], longitude: x[3])
  planet = Planet.create!(name: x[0])
  loc.planet = planet
end
