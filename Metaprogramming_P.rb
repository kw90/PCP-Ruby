
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

