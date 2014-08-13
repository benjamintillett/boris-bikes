require './lib/van.rb'
require './lib/bike_container'
require './spec/bike_container_spec'

describe Van do 
	let(:empty_van) { Van.new }
	let(:station_with_broken_bikes) { DockingStation.new(bikes: [Bike.new.break!, Bike.new.break!, Bike.new]) }

	it_behaves_like "a bike container"

	it "should be a Van" do 
		expect(empty_van).to be_instance_of(Van)
	end


	it "should be able to collect the broken bikes" do 

		empty_van.collect_all_broken_bikes_from(station_with_broken_bikes)
		expect(empty_van.bikes.count).to eq 2
		expect(station_with_broken_bikes.broken_bikes).to be_empty
		expect(station_with_broken_bikes.bikes.count).to eq 1
		empty_van.bikes.each do |bike|
			expect(bike).to an_instance_of(Bike)
		end

	end



end 
