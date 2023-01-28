import 'package:flutter/material.dart';

import '../models/planet_model.dart';

class PlanetDB {
  static final Map<String, PlanetInfo> _planets = {
    'SUN': PlanetInfo(
      name: 'SUN',
      headline: 'THE SOURCE OF LIFE',
      description:
      "Our Sun is a 4.5 billion-year-old star – a hot glowing ball of hydrogen and helium at the center of our solar system. The Sun is about 93 million miles (150 million kilometers) from Earth, and without its energy, life as we know it could not exist here on our home planet. The Sun is the largest object in our solar system. The Sun’s volume would need 1.3 million Earths to fill it. Its gravity holds the solar system together, keeping everything from the biggest planets to the smallest bits of debris in orbit around it.",
      color: Colors.yellow[200],
      model: 'assets/models/glb/sun.glb',
      iosModel: 'assets/models/usdz/sun.usdz',
      image: 'assets/images/sun.png',
      data: PlanetProp(
        meanRadius: 695700, // km
        mass: 1.989e+30, // kg
        eqGravity: 274, // m/s²
        meanTemperature: 5778, // K
      ),
    ),
    'MERCURY': PlanetInfo(
      name: 'MERCURY',
      headline: 'THE CLOSEST PLANET TO THE SUN',
      description:
      "The smallest planet in our solar system and nearest to the Sun, Mercury is only slightly larger than Earth's Moon. From the surface of Mercury, the Sun would appear more than three times as large as it does when viewed from Earth, and the sunlight would be as much as seven times brighter. Despite its proximity to the Sun, Mercury is not the hottest planet in our solar system – that title belongs to nearby Venus, thanks to its dense atmosphere.",
      color: Colors.grey[400],
      model: 'assets/models/glb/mercury.glb',
      iosModel: 'assets/models/usdz/mercury.usdz',
      image: 'assets/images/mercury.png',
      data: PlanetProp(
        avgDistance: 57909227, // km
        meanRadius: 2439.4, // km
        mass: 0.330103e+24, // kg
        eqGravity: 3.7, // m/s²
        lengthOfYear: 0.2408467, // years
        meanTemperature: 440, // K
      ),
    ),
    'VENUS': PlanetInfo(
      name: 'VENUS',
      headline: 'THE EARTH\'S TOXIC TWIN',
      description:
      "Venus is the second planet from the Sun and is Earth’s closest planetary neighbor. It’s one of the four inner, terrestrial (or rocky) planets, and it’s often called Earth’s twin because it’s similar in size and density. These are not identical twins, however – there are radical differences between the two worlds.",
      color: Colors.deepOrange[600],
      model: 'assets/models/glb/venus.glb',
      iosModel: 'assets/models/usdz/venus.usdz',
      image: 'assets/images/venus.png',
      data: PlanetProp(
        avgDistance: 108209475, // km
        meanRadius: 6051.8, // km
        mass: 4.86731e+24, // kg
        eqGravity: 8.87, // m/s²
        lengthOfYear: 0.61519726, // years
        meanTemperature: 737, // K
      ),
    ),
    'EARTH': PlanetInfo(
      name: 'EARTH',
      headline: 'HOME, SWEET HOME',
      description:
      "Our home planet is the third planet from the Sun, and the only place we know of so far that’s inhabited by living things. While Earth is only the fifth largest planet in the solar system, it is the only world in our solar system with liquid water on the surface. Just slightly larger than nearby Venus, Earth is the biggest of the four planets closest to the Sun, all of which are made of rock and metal.",
      color: Colors.blue[400],
      model: 'assets/models/glb/earth.glb',
      iosModel: 'assets/models/usdz/earth.usdz',
      image: 'assets/images/earth.png',
      data: PlanetProp(
        avgDistance: 149598262, // km
        meanRadius: 6371.0084, // km
        mass: 5.97217e+24, // kg
        eqGravity: 9.80665, // m/s²
        lengthOfYear: 1.0000174, // years
        meanTemperature: 288, // K
      ),
    ),
    'MARS': PlanetInfo(
      name: 'MARS',
      headline: 'THE RED PLANET',
      description:
      "Mars is the fourth planet from the Sun – a dusty, cold, desert world with a very thin atmosphere. Mars is also a dynamic planet with seasons, polar ice caps, canyons, extinct volcanoes, and evidence that it was even more active in the past. Mars is one of the most explored bodies in our solar system, and it's the only planet where we've sent rovers to roam the alien landscape.",
      color: Colors.red[400],
      model: 'assets/models/glb/mars.glb',
      iosModel: 'assets/models/usdz/mars.usdz',
      image: 'assets/images/mars.png',
      data: PlanetProp(
        avgDistance: 227943824, // km
        meanRadius: 3389.5, // km
        mass: 0.641691e+24, // kg
        eqGravity: 3.71, // m/s²
        lengthOfYear: 1.8808476, // years
        meanTemperature: 208, // K
      ),
    ),
    'JUPITER': PlanetInfo(
      name: 'JUPITER',
      headline: 'THE GAS GIANT',
      description:
      "Jupiter has a long history of surprising scientists – all the way back to 1610 when Galileo Galilei found the first moons beyond Earth. That discovery changed the way we see the universe. Fifth in line from the Sun, Jupiter is, by far, the largest planet in the solar system – more than twice as massive as all the other planets combined.",
      color: Colors.amber[50],
      model: 'assets/models/glb/jupiter.glb',
      iosModel: 'assets/models/usdz/jupiter.usdz',
      image: 'assets/images/jupiter.png',
      data: PlanetProp(
        avgDistance: 778340821, // km
        meanRadius: 69911, // km
        mass: 1898.125e+24, // kg
        eqGravity: 24.79, // m/s²
        lengthOfYear: 11.862615, // years
        meanTemperature: 163, // K
      ),
    ),
    'SATURN': PlanetInfo(
      name: 'SATURN',
      headline: 'THE RINGED PLANET',
      description:
      "Saturn is the sixth planet from the Sun and the second-largest planet in our solar system. Adorned with thousands of beautiful ringlets, Saturn is unique among the planets. It is not the only planet to have rings – made of chunks of ice and rock – but none are as spectacular or as complicated as Saturn's.",
      color: Colors.yellow[50],
      model: 'assets/models/glb/saturn.glb',
      iosModel: 'assets/models/usdz/saturn.usdz',
      image: 'assets/images/saturn.png',
      data: PlanetProp(
        avgDistance: 1426666422, // km
        meanRadius: 58232, // km
        mass: 568.317e+24, // kg
        eqGravity: 10.44, // m/s²
        lengthOfYear: 29.447498, // years
        meanTemperature: 133, // K
      ),
    ),
    'URANUS': PlanetInfo(
      name: 'URANUS',
      headline: 'THE BULLS-EYE PLANET',
      description:
      "Uranus is the seventh planet from the Sun, and has the third-largest diameter in our solar system. It was the first planet found with the aid of a telescope, Uranus was discovered in 1781 by astronomer William Herschel, although he originally thought it was either a comet or a star.",
      color: Colors.blue[50],
      model: 'assets/models/glb/uranus.glb',
      iosModel: 'assets/models/usdz/uranus.usdz',
      image: 'assets/images/uranus.png',
      data: PlanetProp(
        avgDistance: 2870658186, // km
        meanRadius: 25362, // km
        mass: 86.8099e+24, // kg
        eqGravity: 8.87, // m/s²
        lengthOfYear: 84.016846, // years
        meanTemperature: 78, // K
      ),
    ),
    'NEPTUNE': PlanetInfo(
      name: 'NEPTUNE',
      headline: 'THE ICE LIFELESS GIANT',
      description:
      "Dark, cold, and whipped by supersonic winds, ice giant Neptune is the eighth and most distant planet in our solar system. More than 30 times as far from the Sun as Earth, Neptune is the only planet in our solar system not visible to the naked eye and the first predicted by mathematics before its discovery. In 2011 Neptune completed its first 165-year orbit since its discovery in 1846.",
      color: Colors.blue[200],
      model: 'assets/models/glb/neptune.glb',
      iosModel: 'assets/models/usdz/neptune.usdz',
      image: 'assets/images/neptune.png',
      data: PlanetProp(
        avgDistance: 4498396441, // km
        meanRadius: 24622, // km
        mass: 102.4092e+24, // kg
        eqGravity: 11.15, // m/s²
        lengthOfYear: 164.79132, // years
        meanTemperature: 73, // K
      ),
    ),
  };

  static PlanetInfo? getPlanet(String name) {
    return _planets[name];
  }

  static PlanetInfo? getPlanetByIndex(int index) {
    return _planets.values.elementAt(index);
  }

  static int getPlanetCount() {
    return _planets.length;
  }

  static List<PlanetInfo> getPlanets() {
    return _planets.values.toList();
  }

  static List<String> getPlanetNames() {
    return _planets.keys.toList();
  }
}