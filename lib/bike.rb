class Bike	
	
	def initialize 
		self.fix!
		size!
	end
	
	def broken?
		@broken
	end

	def break!
		@broken = true
	end
	
	def fix!
		@broken = false
	end
	def size! 
		@biggness = 10
	end
	def show_biggness
		@bigness
	end



end
