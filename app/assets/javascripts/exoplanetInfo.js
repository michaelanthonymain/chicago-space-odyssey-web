var exoPlanets = [
  // Planetarium
  ["Our Solar System", 41.866333, -87.606783, 7,
    '<div id="content">'+
    '<div id="siteNotice"></div>'+
    '<h1 id="firstHeading" class="firstHeading">Our Solar System</h1>'+
    '<div id="bodyContent">'+
    '<p><b>The Solar System</b> is where we live. It has eight planets, which are Mercury, Venus, Earth (us), '+
    'Mars, Jupiter, Saturn, Uranus, and Neptune.</p>'+
    '<p>The marker is at The Adler Planetarium. All of the other extra-solar systems are proportionally distant '+
    'from here as they are in real life. The scale used is 7 light years to one mile.</p>'+
    '<p>Resources:</p>'+
    '<ul>'+
    "<li>The Solar System on <a href='http://solarsystem.nasa.gov/planets/'>NASA's Website</li>"+
    '<li>The Solar System on <a href="http://en.wikipedia.org/wiki/Solar_System">Wikipedia</a></li>'+
    '</ul>'+
    '</div></div>'
  ],
  // Soldier Field
  ['Alpha Centauri A/B', 41.862074, -87.616804, 8,
    '<div id="content">'+
    '<div id="siteNotice"></div>'+
    '<h1 id="firstHeading" class="firstHeading">Alpha Centauri A/B</h1>'+
    '<div id="bodyContent">'+
    '<p><b>Alpha Centauri</b> is the closest extra-solar star system to our own, being only about 4 light years away. Although it looks like '+
    'one star to the naked eye, it is actually a binary star system, which means it consists of two stars that orbit '+
    'each other, Alpha Centauri A and Alpha Centauri B. Alpha Centauri B may also have a rocky terrestrial planet, '+
    'called Alpha Centauri Bb. Being about 4 light years away, if you could stand on Alpha Centauri Bb right now it would '+
    'look like the the year '+ ((new Date().getFullYear())-4) +'.</p>'+
    '<p>The marker is at Soldier Field, which is where the Chicago Bears football team plays. It is about 0.6 miles'+
    ' from the Adler Planetarium.</p>'+
    '<p>Resources:</p>'+
    '<ul>'+
    "<li>Our Galactic Neighborhood on <a href='http://interstellar.jpl.nasa.gov/interstellar/probe/introduction/neighborhood.html'>NASA's Website</a></li>"+
    '<li>Alpha Centauri on <a href="http://en.wikipedia.org/wiki/Alpha_Centauri">Wikipedia</a></li>'+
    '</ul>'+
    '</div></div>'
  ],
  // Navy Pier Ferris Wheel
  ['Tau Ceti', 41.891712, -87.607244, 2,
    '<div id="content">'+
    '<div id="siteNotice"></div>'+
    '<h1 id="firstHeading" class="firstHeading">Tau Ceti</h1>'+
    '<div id="bodyContent">'+
    '<p><b>Tau Ceti</b> is a star in the constellation Cetus. It is very similar to our Sun, except it is about '+
    "75% of the Sun's mass. At about 12 light years away, it is one of the closest stars to the Sun. Because it is "+
    "12 light years away, light that is reaching Tau Ceti right now left the Earth in the year "+ ((new Date().getFullYear())-12) +".</p>"+
    "<p>Tau Ceti has 5 confirmed planets: Tau Ceti b, c, d, e, and f. Two of those planets, e and f, are within Tau Ceti's "+
    "habitable zone, which makes them prime targets for the search for extra-terrestrial life.</p>"+
    "<p>The marker is at Navy Pier's Ferris Wheel. It is about 1.7 miles"+
    ' from the Adler Planetarium.</p>'+
    '<p>Resources:</p>'+
    '<ul>'+
    "<li>Tau Ceti on <a href='http://www.princeton.edu/~achaney/tmve/wiki100k/docs/Tau_Ceti.html'>Princeton University's Website</a></li>"+
    '<li>Tau Ceti on <a href="http://en.wikipedia.org/wiki/Tau_Ceti">Wikipedia</a></li>'+
    '</ul>'+
    '</div></div>'
  ],
  // Millennium Park/Cloud Gate (The Bean)
  ['Epsilon Eridani', 41.882672, -87.623340, 6,
    '<div id="content">'+
    '<div id="siteNotice"></div>'+
    '<h1 id="firstHeading" class="firstHeading">Epsilon Eridani</h1>'+
    '<div id="bodyContent">'+
    '<p><b>Epsilon Eridani</b> is a star in the constellation Eridanus that is about 10.5 light years away. It is the '+
    'third closest star to the Sun, and even then light that left Earth in '+((new Date().getFullYear())-11)+' is just getting '+
    'there now.</p>'+
    "<p>Epsilon Eridani has 2 planets, Epsilon Eridani b and c. Although Epsilon Eridani b has actually been observed, "+
    "Epsilon Eridani c hasn't been and its existence is only speculated, because computer simulations of a disty disk that orbit "+
    "the star show that there could be a second planet in the system.</p>"+
    "<p>The marker is at Millennium Park, more specifically at the sculpture 'Cloud Gate,' also known as 'The Bean.' It is about 1.5 miles"+
    ' from the Adler Planetarium.</p>'+
    '<p>Resources:</p>'+
    '<ul>'+
    "<li>Epsilon Eridani b on <a href='http://exoplanet.eu/catalog/eps_eridani_b/'>Exoplanet.eu</a></li>"+
    "<li>Epsilon Eridani on <a href='http://apod.nasa.gov/apod/ap000807.html'>NASA's Astronomy Picture of the Day</a></li>"+
    '<li>Epsilon Eridani on <a href="http://en.wikipedia.org/wiki/Epsilon_Eridani">Wikipedia</a></li>'+
    '</ul>'+
    '</div></div>'
  ],
  // Merch Mart
  ['Gliese 876', 41.888477, -87.635407, 5,
    '<div id="content">'+
    '<div id="siteNotice"></div>'+
    '<h1 id="firstHeading" class="firstHeading">Gliese 876</h1>'+
    '<div id="bodyContent">'+
    '<p><b>Gliese 876</b> is a red dwarf star in the constellation Aquarius and is about 15 light years away. So light that left '+
    'Earth in '+((new Date().getFullYear())-15)+' is just getting to Gliese 876 now. As a red dwarf, Gliese 876 is much smaller and much '+
    'less hot than the Sun, and it is only about 1.25% as bright as the Sun.</p>'+
    "<p>Gliese 876 is the closest star to have a confirmed multi-planetary system. It has 4 planets, Gliese 876 d, c, b, and e. "+
    "The inner-most planet, Gliese 876 d, is likely a rocky planet, while the rest are speculated to be gas giants. Gliese 876 b "+
    "happens to be the first planet ever discovered orbiting a red dwarf star.</p>"+
    "<p>This marker is at the Merchandise Mart, which is about 2.14 miles"+
    ' from the Adler Planetarium.</p>'+
    '<p>Resources:</p>'+
    '<ul>'+
    "<li>Gliese 876 d on <a href='http://exoplanet.eu/catalog/gliese_876_d/'>Exoplanet.eu</a></li>"+
    "<li>Gliese 876 on <a href='http://apod.nasa.gov/apod/ap980626.html'>NASA's Astronomy Picture of the Day</a></li>"+
    '<li>Gliese 876 on <a href="http://en.wikipedia.org/wiki/Gliese_876">Wikipedia</a></li>'+
    '</ul>'+
    '</div></div>'
  ],
  // DBC
  ["Gliese 682",41.889911, -87.637657, 4,
    '<div id="content">'+
    '<div id="siteNotice"></div>'+
    '<h1 id="firstHeading" class="firstHeading">Gliese 682</h1>'+
    '<div id="bodyContent">'+
    '<p><b>Gliese 682</b>, or GJ 682, is a red dwarf star and is listed as 49th '+
    'nearest star to the Sun, being about 16 light years away from the Earth. That means that '+
    "if you could stand on Gliese 682's planet, Gliese 682 b, right now and looked at the Earth, "+
    "it would look like it's the year "+ ((new Date().getFullYear())-16) +".</p>"+
    '<p>The marker is at Dev Bootcamp, which is where this app was built by 5 students for their final project. It is about 2.29 miles'+
    ' from the Adler Planetarium.</p>'+
    '<p>Resources:</p>'+
    '<ul><li>Gliese 682 on <a href="http://en.wikipedia.org/wiki/Gliese_682">Wikipedia</a></li></ul>'+
    '</div></div>'
  ],
  // US Cell Field
  ['82 G. Eridani', 41.830273, -87.633348, 9,
    '<div id="content">'+
    '<div id="siteNotice"></div>'+
    '<h1 id="firstHeading" class="firstHeading">82 G. Eridani</h1>'+
    '<div id="bodyContent">'+
    "<p><b>82 G. Eridani</b> is a main sequence star, like the Sun, that's a little under 20 light years away from Earth in the constellation Eridanus. That "+
    "means that light that left Earth in the year "+ ((new Date().getFullYear())-20) +" is just reaching 82 G. Eridani now.</p>"+
    "<p>82 G. Eridani has three planets, 82 G. Eridani b, c, and d. They are all classified as 'super-Earths,' which means "+
    "they have just a few times the mass of Earth. Each one also orbit 82 G. Eridani in 90 days or less, meaning "+
    "they are very close to the star.</p>"+
    "<p>This marker is at US Cellular Field, the home of the Chicago White Sox, which is about 2.82 miles"+
    ' from the Adler Planetarium.</p>'+
    '<p>Resources:</p>'+
    '<ul>'+
    '<li>82 G. Eridani on <a href="http://en.wikipedia.org/wiki/82_G._Eridani">Wikipedia</a></li>'+
    '</ul>'+
    '</div></div>'
  ],
  // Wrigley
  ['HD 40307', 41.947854, -87.655642, 1,
    '<div id="content">'+
    '<div id="siteNotice"></div>'+
    '<h1 id="firstHeading" class="firstHeading">HD 40307</h1>'+
    '<div id="bodyContent">'+
    "<p><b>HD 40307</b> is a star in the constellation Pictor that is about 42 light years away. That means that "+
    "light that left Earth in the year "+ ((new Date().getFullYear())-42) +" is just reaching HD 40307 now.</p>"+
    "<p>HD 40307 has an astonishing 6 planets, 5 of which orbit closer than Mercury orbits our Sun. The last planet "+
    "orbits about as far away from HD 40307 as Venus orbits the Sun, and lies within HD 40307's habitable zone.</p>"+
    "<p>This marker is at Wrigley Field, the home of the Chicago Cubs, which is about 6 miles"+
    ' from the Adler Planetarium.</p>'+
    '<p>Resources:</p>'+
    '<ul>'+
    '<li>HD 40307 on <a href="http://exoplanet.eu/catalog/?f=%27HD%2040307%27+in+name">Exoplanet.eu</a></li>'+
    '<li>HD 40307 on <a href="http://en.wikipedia.org/wiki/HD_40307">Wikipedia</a></li>'+
    '</ul>'+
    '</div></div>'
  ],
  // Site of the first sustained Nuclear reaction, old Stagg Field , university of chicago Chicago Pile 1
  ['HD 85512', 41.792015, -87.599959, 10,
    '<div id="content">'+
    '<div id="siteNotice"></div>'+
    '<h1 id="firstHeading" class="firstHeading">HD 85512</h1>'+
    '<div id="bodyContent">'+
    "<p><b>HD 85512</b> is a star that's about 36 light years away from Earth in the constellation Vela. Because it is "+
    "36 light years away, That means that light that left Earth in the year "+ ((new Date().getFullYear())-36) +" is just "+
    "reaching HD 85512 now.</p>"+
    "<p>HD 85512 has one planet, HD 85512 b, that is about 3 times the mass of Earth. It also lies within "+
    "HD 85512's habitable zone. Scientists believe has the potential to be cool enough to have liquid water "+
    "on its surface, making it potentially habitable.</p>"+
    "<p>This marker is at the University of Chicago's Regenstein Library, which is on the site of Chicago Pile-1, the first "+
    "sustained nuclear reaction on Earth. It is about 5.15 miles"+
    ' from the Adler Planetarium.</p>'+
    '<p>Resources:</p>'+
    '<ul>'+
    '<li>HD 85512 b on <a href="http://exoplanet.eu/catalog/hd_85512_b/">Exoplanet.eu</a></li>'+
    '<li>HD 85512 on <a href="http://en.wikipedia.org/wiki/HD_85512">Wikipedia</a></li>'+
    '</ul>'+
    '</div></div>'
  ]
]
