require 'faker'

t = Time.new

exosystems = [
  # // Planetarium
  ["Our Solar System", 0, 'Adler Planetarium', 41.866333, -87.606783, "The Solar System is where we live. It has eight planets, which are Mercury, Venus, Earth (us), Mars, Jupiter, Saturn, Uranus, and Neptune.\nThe marker is at The Adler Planetarium. All of the other extra-solar systems are proportionally distant from here as they are in real life. The scale used is 7 light years to one mile. On that scale, the closest solar system to our own, Alpha Centauri, is about 0.6 miles away, our Solar System is only about <i>11 inches</i> wide, the Earth would be smaller than a bacterium, and a person would me much smaller than an atom."],
  # // Soldier Field
  ['Alpha Centauri A/B', 4, 'Soldier Field', 41.862074, -87.616804, "Alpha Centauri is the closest extra-solar star system to our own, being only about 4 light years away. Although it looks like one star to the naked eye, it is actually a binary star system, which means it consists of two stars that orbit each other, Alpha Centauri A and Alpha Centauri B. Alpha Centauri B may also have a rocky terrestrial planet, alled Alpha Centauri Bb. Being about 4 light years away, if you could stand on Alpha Centauri Bb right now it would look like the the year #{t.year - 4}.\n\nThe marker is at Soldier Field, which is where the Chicago Bears football team plays. It is about 0.6 miles from the Adler Planetarium."],
  # // Navy Pier Ferris Wheel
  ['Tau Ceti', 12, "Navy Pier Ferris Wheel", 41.891712, -87.607244, "Tau Ceti is a star in the constellation Cetus. It is very similar to our Sun, except it is about 75% of the Sun's mass. At about 12 light years away, it is one of the closest stars to the Sun. Because it is 12 light years away, light that is reaching Tau Ceti right now left the Earth in the year #{t.year - 12}.\n\nTau Ceti has 5 confirmed planets: Tau Ceti b, c, d, e, and f. Two of those planets, e and f, are within Tau Ceti's habitable zone, which makes them prime targets for the search for extra-terrestrial life.\n\nThe marker is at Navy Pier's Ferris Wheel. It is about 1.7 miles from the Adler Planetarium."],
  # Millenium Park. Star is really 10.5ly away, made it 11 for simplicity
  ['Epsilon Eridani', 11, "Millennium Park", 41.882672, -87.623340, "Epsilon Eridani is a star in the constellation Eridanus that is about 10.5 light years away. It is the third closest star to the Sun, and even then light that left Earth in #{t.year - 11} is just getting there now.\n\nEpsilon Eridani has 2 planets, Epsilon Eridani b and c. Although Epsilon Eridani b has actually been observed, Epsilon Eridani c hasn't been and its existence is only speculated, because computer simulations of a disty disk that orbit the star show that there could be a second planet in the system.\n\nThe marker is at Millennium Park, more specifically at the sculpture 'Cloud Gate,' also known as 'The Bean.' It is about 1.5 miles from the Adler Planetarium."],
  # // Merch Mart
  ['Gliese 876', 15, 'Merchandise Mart', 41.888477, -87.635407, "Gliese 876 is a red dwarf star in the constellation Aquarius and is about 15 light years away. So light that left Earth in #{t.year - 15} is just getting to Gliese 876 now. As a red dwarf, Gliese 876 is much smaller and much less hot than the Sun, and it is only about 1.25% as bright as the Sun.\n\nGliese 876 is the closest star to have a confirmed multi-planetary system. It has 4 planets, Gliese 876 d, c, b, and e. The inner-most planet, Gliese 876 d, is likely a rocky planet, while the rest are speculated to be gas giants. Gliese 876 b happens to be the first planet ever discovered orbiting a red dwarf star.\n\nThis marker is at the Merchandise Mart, which is about 2.14 miles from the Adler Planetarium."],
  # // This is the one that's at DBC
  ["Gliese 682", 16, "Dev Bootcamp", 41.889911, -87.637657, "Gliese 682, or GJ 682, is a red dwarf star and is listed as 49th nearest star to the Sun, being about 16 light years away from the Earth. That means that if you could stand on Gliese 682's planet, Gliese 682 b, right now and looked at the Earth, it would look like it's the year #{t.year - 16}.\n\nThe marker is at Dev Bootcamp, which is where this app was built by 5 students for their final project. It is about 2.29 miles from the Adler Planetarium."],
  # // US Cell Field
  ['82 G. Eridani', 20, "US Cellular Field", 41.830273, -87.633348, "82 G. Eridani is a main sequence star, like the Sun, that's a little under 20 light years away from Earth in the constellation Eridanus. That means that light that left Earth in the year #{t.year - 20} is just reaching 82 G. Eridani now.\n\n82 G. Eridani has three planets, 82 G. Eridani b, c, and d. They are all classified as 'super-Earths,' which means they have just a few times the mass of Earth. Each one also orbit 82 G. Eridani in 90 days or less, meaning they are very close to the star\n\nThis marker is at US Cellular Field, the home of the Chicago White Sox, which is about 2.82 miles from the Adler Planetarium."],
  # // Wrigley
  ['HD 40307', 42, "Wrigley Field", 41.947854, -87.655642, "HD 40307 is a star in the constellation Pictor that is about 42 light years away. That means that light that left Earth in the year #{t.year - 42} is just reaching HD 40307 now.\n\nHD 40307 has an astonishing 6 planets, 5 of which orbit closer than Mercury orbits our Sun. The last planet orbits about as far away from HD 40307 as Venus orbits the Sun, and lies within HD 40307's habitable zone.\n\nThis marker is at Wrigley Field, the home of the Chicago Cubs, which is about 6 miles from the Adler Planetarium."],
  # Chicago Pile-1
  ['HD 85512', 36, "Chicago Pile-1", 41.792015, -87.599959, "HD 85512 is a star that's about 36 light years away from Earth in the constellation Vela. Because it is 36 light years away, That means that light that left Earth in the year #{t.year - 36} is just reaching HD 85512 now.\n\nHD 85512 has one planet, HD 85512 b, that is about 3 times the mass of Earth. It also lies within HD 85512's habitable zone. Scientists believe has the potential to be cool enough to have liquid water on its surface, making it potentially habitable.\n\nThis marker is at the University of Chicago's Regenstein Library, which is on the site of Chicago Pile-1, the first sustained nuclear reaction on Earth. It is about 5.15 miles from the Adler Planetarium."]
]

# Seeding Locations and Systems
exosystems.each do |x|
  loc = Location.create!(name: x[2], latitude: x[3], longitude: x[4])
  system = System.create!(name: x[0], distance: x[1], description: x[5])
  loc.system = system
end

#Create Users
# 5.times do
#   User.create(name: Faker::Name.name, username: Faker::Team.creature)
# end

# users = [1, 2, 3, 4, 5]
# locations = [1, 2, 3, 4, 5, 6, 7, 8, 9]

# #Create Visits
# Visit.create(user_id: 1, location_id: 1)
# Visit.create(user_id: 1, location_id: 2)
# Visit.create(user_id: 1, location_id: 3)
# Visit.create(user_id: 1, location_id: 4)
# Visit.create(user_id: 1, location_id: 5)
# Visit.create(user_id: 1, location_id: 6)
# Visit.create(user_id: 1, location_id: 7)
# Visit.create(user_id: 1, location_id: 8)
# Visit.create(user_id: 1, location_id: 9)

# 15.times do
#   Visit.create(user_id: users.sample, location_id: locations.sample)
# end

# #Create Collections
# 10.times do
#   Collection.create(text: "Back in my day, all we listened to was carnival music!", user_id: users.sample, location_id: locations.sample)
# end
ryan = User.create(uid: 22741881)
michael = User.create(uid: 1855826580)
javad = User.create(uid: 14343779)
javad.locations << Location.find(1)

Location.all.each do |l|
  ryan.locations << l
  michael.locations << l
end

3.times do
  javad.locations << Location.all.sample
end

# File.open("adler.png", "wb") do |f|
#   Collection.create(user: javad, text: "Checking out the Adler!", image: f, location_id: 1)
# end

# Collection.create(user: User.find(3), text: "Checking out the Adler!", image: open('http://www.freestuffwire.com/media/free/21/Adler-Planetarium-Free-Days-2011-Chicago-Photo.png'), location_id: 1)
