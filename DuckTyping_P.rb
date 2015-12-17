
class Duck
  def quack
    'Quack!'
  end

  def swim
    'Paddle paddle paddle...'
  end
end

class Goose
  def honk
    'Honk!'
  end
  def swim
    'Splash splash splash...'
  end
end


def make_it_swim(duck)
  duck.swim
end

puts make_it_swim(Duck.new)
puts make_it_swim(Goose.new)
puts

