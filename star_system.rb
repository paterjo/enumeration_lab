class StarSystem
  attr_reader :name, :planets
  def initialize(name, planets)
    @name = name
    @planets = planets

  end

    def planet_names
       @planets.map { |planet| planet.name}
    end

    def get_planet_by_name(planet_name)
      return @planets.find { |planet| planet.name == planet_name}
    end

    def get_largest_planet
      result = @planets.sort_by{ |planet| planet.diameter}
      return result.last
    end

    def get_smallest_planet
      result = @planets.sort_by{ |planet| planet.diameter}
      return result.first
    end

    def get_planets_with_no_moons
      return @planets.select { |planet| planet.number_of_moons == 0}
    end

    def get_planets_with_more_moons(moons)
      result = @planets.select { |planet| planet.number_of_moons > moons}
      return result.map { |planet| planet.name}
    end

    def get_number_of_planets_closer_than(distance)
      result = @planets.select { |planet| planet.distance_from_sun < 1000}
      return result.count
    end

    def get_total_number_of_moons
      return @planets.reduce(0){ |total, planet| total + planet.number_of_moons}
    end

    def get_planet_names_sorted_by_increasing_distance_from_sun
      result = @planets.sort_by{ |planet| planet.distance_from_sun}
      return result.map { |planet| planet.name }
    end

    def get_planet_names_sorted_by_size_decreasing
      result = @planets.sort_by{ |planet| planet.diameter}.reverse
      return result.map { |planet| planet.name }
    end

end
