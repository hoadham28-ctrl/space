
import '../core/app_images.dart';

class PlanetModel {
  final String name, tagline, image, model3d, about;
  final String distanceFromSun, lengthOfDay, orbitalPeriod;
  final String radius, mass, gravity, surfaceArea;

  const PlanetModel({
    required this.name,
    required this.tagline,
    required this.image,
    required this.model3d,
    required this.about,
    required this.distanceFromSun,
    required this.lengthOfDay,
    required this.orbitalPeriod,
    required this.radius,
    required this.mass,
    required this.gravity,
    required this.surfaceArea,
  });
}

const List<PlanetModel> planets = [
  PlanetModel(
    name: 'Mercury',
    tagline: 'Mercury: The Closest Planet',
    image: AppImages.mercury,
    model3d: AppModels.mercury,
    about:
    'Mercury is the smallest planet in our solar system and the closest '
        'planet to the Sun. Despite its proximity to the Sun, it is not the '
        'hottest planet. Mercury has a heavily cratered surface, similar to '
        'Earth’s Moon, and experiences extreme temperature variations between '
        'day and night. Its thin exosphere provides almost no protection from '
        'solar radiation or meteoroid impacts.',
    distanceFromSun: '57909227',
    lengthOfDay: '1407.6',
    orbitalPeriod: '0.24',
    radius: '2439.70',
    mass: '3.301 × 10²³',
    gravity: '3.7',
    surfaceArea: '7.48 × 10⁷',
  ),
  PlanetModel(
    name: 'Venus',
    tagline: "Venus: Earth's Toxic Twin",
    image: AppImages.venus,
    model3d: AppModels.venus,
    about:
    'Venus is often referred to as Earth’s twin due to its similar size '
        'and composition. However, its thick atmosphere, composed primarily '
        'of carbon dioxide, traps heat, making it the hottest planet in our '
        'solar system. This greenhouse effect creates a hostile environment '
        'with temperatures hot enough to melt lead. Venus is also covered '
        'with thick clouds of sulfuric acid.',
    distanceFromSun: '108209072',
    lengthOfDay: '5832.2',
    orbitalPeriod: '0.62',
    radius: '6051.8',
    mass: '4.867 × 10²⁴',
    gravity: '8.87',
    surfaceArea: '4.60 × 10⁸',
  ),
  PlanetModel(
    name: 'Earth',
    tagline: 'Earth: Our Blue Marble',
    image: AppImages.earth,
    model3d: AppModels.earth,
    about:
    'Earth is the only known planet in the universe that supports life. '
        'Its unique combination of factors, including liquid water, a '
        'breathable atmosphere, and a suitable distance from the Sun, has '
        'created the ideal conditions for the development of complex '
        'organisms. Earth\'s magnetic field protects it from harmful solar '
        'radiation, and its atmosphere helps to regulate temperature and '
        'weather patterns.',
    distanceFromSun: '149598026',
    lengthOfDay: '23.93',
    orbitalPeriod: '1',
    radius: '6371',
    mass: '5.972 × 10²⁴',
    gravity: '9.81',
    surfaceArea: '5.10 × 10⁸',
  ),
  PlanetModel(
    name: 'Mars',
    tagline: 'Mars: The Red Planet',
    image: AppImages.mars,
    model3d: AppModels.mars,
    about:
    'Mars, often called the Red Planet due to its reddish color caused '
        'by iron oxide, is a cold, rocky world with a thin atmosphere. It has '
        'polar ice caps, ancient riverbeds, and evidence of past volcanic '
        'activity, suggesting that it once had a warmer and wetter climate. '
        'Mars is a major target for exploration due to its potential for '
        'past or present microbial life.',
    distanceFromSun: '227943824',
    lengthOfDay: '24.62',
    orbitalPeriod: '1.88',
    radius: '3389.5',
    mass: '6.39 × 10²³',
    gravity: '3.71',
    surfaceArea: '1.45 × 10⁸',
  ),
  PlanetModel(
    name: 'Jupiter',
    tagline: 'Jupiter: The Gas Giant',
    image: AppImages.jupiter,
    model3d: AppModels.jupiter,
    about:
    'Jupiter is the largest planet in our solar system, a gas giant '
        'composed primarily of hydrogen and helium. Its Great Red Spot is '
        'a massive storm that has been raging for centuries. Jupiter has '
        'a strong magnetic field and numerous moons, including Europa, '
        'which is believed to have a subsurface ocean that could potentially '
        'harbor conditions suitable for life.',
    distanceFromSun: '778547669',
    lengthOfDay: '9.92',
    orbitalPeriod: '11.86',
    radius: '69911',
    mass: '1.898 × 10²⁷',
    gravity: '24.79',
    surfaceArea: '6.21 × 10¹⁵',
  ),
  PlanetModel(
    name: 'Saturn',
    tagline: 'Saturn: The Ringed Planet',
    image: AppImages.saturn,
    model3d: AppModels.saturn,
    about:
    'Saturn is best known for its spectacular rings, which are composed '
        'of countless ice particles and rocks. It is a gas giant with a '
        'composition similar to Jupiter, but its rings and moons give it '
        'a distinct appearance. Saturn’s largest moon, Titan, has a thick '
        'atmosphere and is the only known celestial body besides Earth '
        'with stable lakes and rivers of liquid on its surface.',
    distanceFromSun: '1426666422',
    lengthOfDay: '10.66',
    orbitalPeriod: '29.46',
    radius: '58232',
    mass: '5.683 × 10²⁶',
    gravity: '10.44',
    surfaceArea: '4.27 × 10¹⁵',
  ),
  PlanetModel(
    name: 'Uranus',
    tagline: 'Uranus: The Tilted Planet',
    image: AppImages.uranus,
    model3d: AppModels.uranus,
    about:
    'Uranus is an ice giant with a unique axial tilt of approximately '
        '98 degrees, causing its seasons to be extremely unusual. It is '
        'surrounded by faint rings and has numerous moons, including '
        'Miranda, which is known for its unusual surface features. Uranus’s '
        'atmosphere is composed primarily of hydrogen, helium, and methane, '
        'giving the planet its pale blue-green color.',
    distanceFromSun: '2870990000',
    lengthOfDay: '17.24',
    orbitalPeriod: '84.01',
    radius: '25362',
    mass: '8.681 × 10²⁵',
    gravity: '8.69',
    surfaceArea: '8.1 × 10¹⁵',
  ),
  PlanetModel(
    name: 'Neptune',
    tagline: 'Neptune: The Distant World',
    image: AppImages.neptune,
    model3d: AppModels.neptune,
    about:
    'Neptune is the farthest known planet from the Sun and is another '
        'ice giant. Its atmosphere is composed mainly of hydrogen, helium, '
        'and methane, giving it a deep blue appearance. Neptune experiences '
        'extremely powerful winds and massive storms. It has several moons, '
        'including Triton, which orbits the planet in a retrograde direction '
        'and is believed to be a captured Kuiper Belt object.',
    distanceFromSun: '4498252900',
    lengthOfDay: '16.11',
    orbitalPeriod: '164.8',
    radius: '24622',
    mass: '1.024 × 10²⁶',
    gravity: '11.15',
    surfaceArea: '7.65 × 10¹⁵',
  ),
];
