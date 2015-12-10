# Example 1: create a new instance of class Object
my_object = Object.new
my_other_object = Object.new

# define a method on my_object to set the instance variable @my_instance_variable
def my_object.set_my_variable=(var)
  @my_instance_variable = var
end

# define a method on my_object to return value of instance variable @my_instance_variable
def my_object.get_my_variable
  @my_instance_variable
end

my_object.set_my_variable = "Hello"
puts my_object.get_my_variable # => Hello

# my_other_object.set_my_variable = "Hello" # => NoMethodError


class CarModel
  FEATURES = ["engine", "wheel", "airbag", "alarm", "stereo"]

  FEATURES.each do |feature|
    define_method("#{feature}_info=") do |info|
      instance_variable_set("@#{feature}_info", info)
    end

    define_method("#{feature}_info") do
      instance_variable_get("@#{feature}_info")
    end

    define_method "#{feature}_price=" do |price|
      instance_variable_set("@#{feature}_price", price)
    end

    define_method("#{feature}_price") do
      instance_variable_get("@#{feature}_price")
    end
  end
end

class CarModel2
  attr_accessor :engine_info, :engine_price, :wheel_info, :wheel_price, :airbag_info, :airbag_price, :alarm_info, :alarm_price, :stereo_info, :stereo_price
end

class CarModel3
  # define a class macro for setting features
  def self.features(*args)
    args.each do |feature|
      attr_accessor "#{feature}_price", "#{feature}_info"
    end
  end

  # set _info and _price methods for each of these features
  features :engine, :wheel, :airbag, :alarm, :stereo
end

car = CarModel.new
car.engine_info = "Beziner"
puts car.engine_info
car.stereo_price = 1000
puts car.stereo_price

car2 = CarModel2.new
car2.engine_info = "Diesel"
puts car2.engine_info
car2.stereo_price = 800
puts car2.stereo_price

car3 = CarModel3.new
car3.engine_info = "Beziner"
puts car3.engine_info
car3.stereo_price = 500
puts car3.stereo_price

class MyGhostClass
  def method_missing(name, *args)
    puts "#{name} was called with arguments: #{args.join(',')}"
  end
end

m = MyGhostClass.new
m.awesome_method("one", "two") # => awesome_method was called with arguments: one,two
m.another_method("three", "four") # => another_method was called with arguments: three,four

class Array
  def foldl(method)
    inject {|result, i| result ? result.send(method, i) : i }
  end
end

puts [1000.0, 200.0, 50.0].foldl("/")


# methoden abfragen alle ausgeben


