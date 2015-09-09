class Plane

  def initialize
    @flying = true
  end

  def take_off
    raise 'already flying' if flying?
    self.flying = true
  end
  
  def land
    raise 'already landed' if !flying?
    self.flying = false
  end

  private

  attr_writer :flying

  def flying?
    @flying 
  end

end
