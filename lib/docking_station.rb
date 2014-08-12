require_relative 'bike_container'

class DockingStation
	
	include BikeContainer

	def initialize(options = {})
		@bikes        = options.fetch(:bikes, [])
		self.capacity = options.fetch(:capacity, capacity)
	end
end