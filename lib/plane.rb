class Plane

  def initialize
    @flying = true
  end

  def take_off
    raise 'already flying' if flying?
    @flying = true
  end
  
  def land
    raise 'already landed' if !flying?
    @flying = false
  end

  private

  def flying?
    @flying 
  end

end
