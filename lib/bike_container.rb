
module BikeContainer 

	DEFAULT_CAPACITY = 10 

	def empty?
		bike_count == 0 
	end

	def bikes
		@bikes ||= []
	end

	def capacity 
		@capacity ||= DEFAULT_CAPACITY
	end

	def capacity=(value)
		@capacity = value 
	end

	def bike_count
		bikes.count
	end

	def dock(bike)
		raise "I only accept bikes!" if bike.class != Bike
		raise "Station is full" if full?
		bikes << bike
	end

	def release(bike)
		bikes.delete(bike) if working_bikes.count >= 1
	end

	def full?
		bike_count == capacity
	end

	def working_bikes
		bikes.reject { |bike| bike.broken? }
	end

	def broken_bikes
		bikes.select { |bike| bike.broken? }
	end

	def collect_bikes(options = {})
		options[:bike_container].send(options[:bike_selection_method]).each do |bike| 
		 	options[:bike_container].release(bike)
		 	dock(bike)
	 	end
	end

end
