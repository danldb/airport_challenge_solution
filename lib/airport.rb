class Airport

  def initialize weather
    @planes = []
    @weather = weather
  end

  def land plane
    fail 'too stormy' if weather.stormy?
    plane.land
    planes << plane
  end

  def launch
    fail 'too stormy' if weather.stormy?
    fail 'no planes' if planes.empty?
    plane = planes.pop
    plane.take_off
  end

  private

  attr_reader :planes, :weather

end
