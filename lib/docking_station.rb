require_relative 'bike_container'

class DockingStation
	
	include BikeContainer

	def initialize(options = {})
		@bikes        = options.fetch(:bikes, [])
		self.capacity = options.fetch(:capacity, capacity)
	end

	def collect_all_working_bikes_from(van)
		collect_bikes({ bike_container: van, bike_selection_method: :working_bikes}) 
	end



end