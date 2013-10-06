class Vehicle
  def initialize
    @velocity = 0
  end
  def velocity
    @velocity
  end

  def accelerate
    @velocity += 1
  end
end

def assert expression
  if expression
    puts '.'
  else
    puts 'F'
  end
end

def assert_equal expected, actual
  if expected == actual
    puts '.'
  else
    puts "F - Expected #{expected.inspect}, got #{actual.inspect}."
  end
end

# Expects a fresh Vehicle instance to have a velocity of 0
vehicle = Vehicle.new
assert_equal 0, vehicle.velocity

# Requires a method named 'accelerate'
vehicle = Vehicle.new
assert vehicle.respond_to? :accelerate

# Increase the velocity by one
vehicle = Vehicle.new
vehicle.accelerate
assert_equal 1, vehicle.velocity
