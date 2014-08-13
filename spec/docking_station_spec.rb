require './lib/docking_station'
require './lib/bike_container'
require './spec/bike_container_spec'

describe DockingStation do 
	let(:bike) { Bike.new }
	let(:station) { DockingStation.new(:capacity => 123) }
	let(:station_with_bike) { DockingStation.new }
	before { station_with_bike.dock(bike)}
	let(:van_with_working_bikes) { Van.new(bikes: [Bike.new.break!, Bike.new.break!, Bike.new]) }
	it "should allow setting default capicity on initializing" do 
		expect(station.capacity).to eq(123)


	end

	it "should be able to collect the working bikes" do 
		station.collect_all_working_bikes_from(van_with_working_bikes)
		expect(station.bikes.count).to eq 1
	end

	it_behaves_like "a bike container"


end