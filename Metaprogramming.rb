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

class CarModel3
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

puts
car3 = CarModel3.new
car3.engine_info = "Beziner"
puts car3.engine_info
car3.stereo_price = 500
puts car3.stereo_price


puts
# methoden abfragen alle ausgeben
 class Airplane
   def fly
   end

   def start
   end

   def land
   end

   def eject
   end

 end

mets = Airplane.instance_methods
puts "Methoden der Klasse " + Airplane.to_s
mets.each do |met|
  puts met.to_s
end
