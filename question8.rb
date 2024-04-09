class Car
  def initialize(model = '', color = '', speed = 0)
    @model = model
    @color = color
    @current_speed = speed
  end

  def method_missing(method)
    print "Method #{method} is missing"
  end

  def current_speed
    @current_speed
  end

  def speed_up(speed)
    @current_speed += speed
  end

  def speed_down(speed)
    @current_speed -= speed
  end

  def shut_down(speed)
    @current_speed = 0
  end
end

car = Car.new()

car.speed_up(10)
p car.current_speed()
