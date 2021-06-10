class Vehicle
  attr_reader :speed, :direction
  attr_writer :speed, :direction

  def initialize()
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end

end

class Car < Vehicle
  #attr_reader :make, :model, :fuel
  #attr_writer :make, :model, :fuel
  attr_accessor :make, :model, :fuel
  
  def initialize()
    super
    @make = make
    @model = model
    @fuel = fuel
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  attr_reader :type, :weight
  attr_writer :type, :weight
  
  def initialize()
    super
    @type = type
    @weight = weight
  end

  def ring_bell
    puts "Ring ring!"
  end
end

car = Car.new()
bike = Bike.new()

car.honk_horn
bike.ring_bell

puts "-----"

p car.accelerate  #=> 10
car.accelerate 
p car.accelerate  #=> 30
p car.speed       #=> 30
p car.make=("Honda")