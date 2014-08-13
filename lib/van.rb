require_relative "bike_container" 

class Van

	def initialize(options = {})
		@bikes = options.fetch(:bikes, [])
	end

	include BikeContainer

	# def collect_all_broken_bikes_from(station)
	# 	station.broken_bikes.each do |broken_bike| 
	# 		station.release(broken_bike)
	# 		dock(broken_bike)
	# 	end
	# end

	def collect_all_broken_bikes_from(station)
		collect_bikes({ bike_container: station, bike_selection_method: :broken_bikes }) 
	end

end
