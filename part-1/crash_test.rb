class Vehicle
  def velocity
    0 # A method returns its last statement
  end
end

def assert expression
  if expression
    puts '.'  # Only executed when `expression´ evaluates to true
  else
    puts 'F'
  end
end

# Expects a fresh Vehicle instance to have a velocity of 0
vehicle = Vehicle.new
assert vehicle.velocity == 0
