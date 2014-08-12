require_relative "bike_container" 

class Van

	include BikeContainer

	def collect_all_broken_bikes_from(station)
		station.broken_bikes.each do |broken_bike| 
			station.release(broken_bike)
			dock(broken_bike)
		end
	end
	
end
