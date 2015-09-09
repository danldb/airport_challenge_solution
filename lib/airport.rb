require_relative 'weather.rb'

class Airport

  def initialize(weather: Weather)
    @planes = []
    @weather = weather
  end

  def land(plane)
    fail 'too stormy' if weather.stormy?
    planes << plane
  end

  def launch
    fail 'too stormy' if weather.stormy?
    fail 'no planes' if planes.empty?
    planes.pop
  end

  private

  attr_reader :planes, :weather

end
