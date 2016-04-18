class SpaceAge
attr_reader :seconds

EARTH_YEAR = 31557600

PLANETS = {"on_earth" => 1.00,
        "on_mercury" => 0.2408467,
        "on_venus" => 0.61519726,
        "on_mars" => 1.8808158,
        "on_jupiter" => 11.862615,
        "on_saturn" => 29.447498,
        "on_uranus" => 84.016846,
        "on_neptune" => 164.79132}

    def initialize seconds
        @seconds = seconds
    end

    PLANETS.each do |planet, planet_year|
        define_method(planet) { @seconds / (EARTH_YEAR * planet_year)}
    end

end
