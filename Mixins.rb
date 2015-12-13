module Engine
  def start
    puts "Brumm!"
  end
end

module Horn
  def horn
    puts "Möööp!"
  end
end

class Car
  include Engine
  include Horn
end

class Bus
  include Engine
  include Horn
end

puts
car = Car.new
car.start # => Brumm!
car.horn  # => Möööp!

puts
bus = Bus.new
bus.start # => Brumm!
bus.horn  # => Möööp!