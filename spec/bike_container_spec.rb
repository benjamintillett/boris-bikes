require './lib/bike_container'

class ContainerHolder; include BikeContainer; end

describe BikeContainer do 
	let(:bike) { Bike.new }
	let(:holder) { ContainerHolder.new }

	it "should accept a bike" do 
		expect(holder.bike_count).to eq(0)
		holder.dock(bike)
		expect(holder.bike_count).to eq(1)
	end

	it "should release a bike" do
		holder.dock(bike)
		expect(holder.bike_count).to eq(1)
		holder.release(bike)
		expect(holder.bike_count).to eq(0)
	end

	it "should raise an argument error when release called with no argument" do 
		holder.dock(bike)
		expect(holder.bike_count).to eq(1)
		expect { holder.release }.to raise_error ArgumentError
	end

	it "should not release a bike if no bikes are docked" do
		expect(holder.release(bike)).to be nil 
	end

	it "should not release a bike if the argument is not a bike" do
		holder.dock(bike)
		expect(holder.release("string")).to be nil
	end

end