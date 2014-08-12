require './lib/van.rb'

describe Van do 
	let(:empty_van) { Van.new }
	let(:station_with_broken_bikes) { DockingStation.new(bikes: [Bike.new.break!, Bike.new.break!, Bike.new]) }

	it "should be a Van" do 
		expect(empty_van).to be_instance_of(Van)
	end


	it "should be able to collect the broken bikes" do 
		# old_street   = DockingStation.new
		# broken_bike1 = Bike.new.break!
		# broken_bike2 = Bike.new.break!
		# good_bike    = Bike.new
		# old_street.dock(broken_bike1)
		# old_street.dock(broken_bike2)
		# old_street.dock(good_bike)
		empty_van.collect_all_broken_bikes_from(station_with_broken_bikes)
		expect(empty_van.bikes.count).to eq 2
		expect(station_with_broken_bikes.broken_bikes).to be_empty
		expect(station_with_broken_bikes.bikes.count).to eq 1
		empty_van.bikes.each do |bike|
			expect(bike).to an_instance_of(Bike)
		end
		# we need a station with some broken bikes and some working bikes inside
		# we want the van to collect just the broken bikes from the station
		# we want the van to have those broken bikes
	end



end 
