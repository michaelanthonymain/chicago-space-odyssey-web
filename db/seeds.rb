require 'faker'

exosystems = [
  # // Planetarium
  ["Our Solar System", 'Adler Planetarium', 41.866333, -87.606783],
  # // Soldier Field
  ['Alpha Centauri A/B', 'Soldier Field', 41.862074, -87.616804],
  # // Navy Pier Ferris Wheel
  ['Tau Ceti', "Navy Pier Ferris Wheel", 41.891712, -87.607244],
  # // Sears Tower
  ['Epsilon Eridani', "Millennium Park", 41.882672, -87.623340],
  # // Merch Mart
  ['Gliese 876', 'Merchandise Mart', 41.888477, -87.635407],
  # // This is the one that's at DBC
  ["Gliese 682", "Dev Bootcamp", 41.889911, -87.637657],
  # // US Cell Field
  ['82 G. Eridani', "US Cellular Field", 41.830273, -87.633348],
  # // Wrigley
  ['HD 40307', "Wrigley Field", 41.947854, -87.655642],
  # // Museum of Science and Industry
  ['HD 85512', "Chicago Pile-1", 41.792015, -87.599959]
]

# Creating Locations and Systems
exosystems.each do |x|
  loc = Location.create!(name: x[1], latitude: x[2], longitude: x[3])
  system = System.create!(name: x[0])
  loc.system = system
end

#Create Users
5.times do
    User.create(name: Faker::Name.name, username: Faker::Team.creature)
end

users = [1, 2, 3, 4, 5]
locations = [1, 2, 3, 4, 5, 6, 7, 8, 9]

#Create Visits
Visit.create(user_id: 1, location_id: 1)
Visit.create(user_id: 1, location_id: 2)
Visit.create(user_id: 1, location_id: 3)
Visit.create(user_id: 1, location_id: 4)
Visit.create(user_id: 1, location_id: 5)
Visit.create(user_id: 1, location_id: 6)
Visit.create(user_id: 1, location_id: 7)
Visit.create(user_id: 1, location_id: 8)
Visit.create(user_id: 1, location_id: 9)

15.times do
  Visit.create(user_id: users.sample, location_id: locations.sample)
end

#Create Collections
10.times do
  Collection.create(text: "Back in my day, all we listened to was carnival music!", user_id: users.sample, location_id: locations.sample)
end
