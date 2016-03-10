class SpaceAge
  attr_accessor :seconds
  EARTH_YEAR = 31557600.0
  def initialize(age_in_seconds)
    @seconds = age_in_seconds
  end
  {
    earth: 1,
    mercury: 0.2408467,
    venus: 0.61519726,
    mars: 1.8808158,
    jupiter: 11.862615,
    saturn: 29.447498,
    uranus: 84.016846,
    neptune: 164.79132,
  }.each do |planet, orbital_period|
    define_method("on_#{planet}") {seconds/ (EARTH_YEAR * orbital_period)}
  end
end
