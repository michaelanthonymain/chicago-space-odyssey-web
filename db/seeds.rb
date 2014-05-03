require 'faker'

exosystems = [
  # // Planetarium
  ["Our Solar System", 'Adler Planetarium', 41.866333, -87.606783],
  # // Soldier Field
  ['Alpha Centauri B', 'Soldier Field', 41.862074, -87.616804],
  # // Navy Pier Children's Museum
  # ['Tau Ceti e', "Navy Pier Children's Museum", 41.891105, -87.609497], Can't do because same system as below
  # // Navy Pier Ferris Wheel
  ['Tau Ceti', "Navy Pier Ferris Wheel", 41.891712, -87.607244],
  # // Sears Tower
  ['GJ 180', "Willis Tower", 41.878900, -87.635772],
  # // Merch Mart
  ['Gliese 876', 'Merchandise Mart', 41.888477, -87.635407],
  # // This is the one that's at DBC
  ["Gliese 682", "Dev Bootcamp", 41.889911, -87.637657],
  # // US Cell Field
  ['82 G. Eridani', "US Cellular Field", 41.830273, -87.633348],
  # // Wrigley
  ['HD 40307', "Wrigley Field", 41.947854, -87.655642],
  # // Museum of Science and Industry
  ['HD 85512', "The Museum of Science and Industry", 41.790573, -87.583066]
]

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


#Create Locations
Location.create(name: 'Adler Planetarium', latitude: 41.866333, longitude: -87.606783)
Location.create(name: 'Soldier Field', latitude: 41.862074, longitude: -87.616804)
Location.create(name: 'Nay Pier Ferris Wheel', latitude: 41.891712, longitude: -87.607244)
Location.create(name: 'Willis Tower', latitude: 41.878900, longitude: -87.635772)
Location.create(name: 'Merchandise Mart', latitude: 41.888477, longitude: -87.635407)
Location.create(name: 'Dev Bootcamp', latitude: 41.889911, longitude: -87.637657)
Location.create(name: 'US Cellular Field', latitude: 41.830273, longitude: -87.633348)
Location.create(name: 'Wrigley Field', latitude: 41.947854, longitude: -87.655642)
Location.create(name: 'Museum of Science and Industry', latitude: 41.790573, longitude: -87.583066)

#Create Systems
System.create(name: "Our Solar System" , location_id: 1)
System.create(name: "Alpha Centauri Bb", location_id: 2)
System.create(name: "Tau Ceti", location_id: 3)
System.create(name: "GJ 180" , location_id: 4)
System.create(name: "Gliese 876" , location_id: 5)
System.create(name: "Gliese 682", location_id: 6)
System.create(name: '82 G. Eridani', location_id: 7)
System.create(name: 'HD 40307', location_id: 8)
System.create(name: 'HD 85512', location_id: 9)

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