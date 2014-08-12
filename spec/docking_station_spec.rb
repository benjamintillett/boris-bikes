require './lib/docking_station'

describe DockingStation do 
	let(:bike) { Bike.new }
	let(:station) { DockingStation.new(:capacity => 123) }
	let(:station_with_bike) { DockingStation.new }
	before { station_with_bike.dock(bike)}


	it "should allow setting default capicity on initializing" do 
		expect(station.capacity).to eq(123)
	end

	context "A DockingStation with one bike" do
		it "should not release a broken bike" do 
			station_with_bike.bikes.first.break!
			expect(station_with_bike.release(bike)).to eq nil
		end
	end

end