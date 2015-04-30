require 'docking_station'

feature "User can get a working bike from docking station" do 
	scenario "A working bike is released from the docking station at the user's request" do 
		station = DockingStation.new
		station.dock Bike.new
		bike = station.release_bike
		expect(bike).to be_working
	end

	scenario "Docking Station to not release bike when there are no bikes available" do 
		station = DockingStation.new 
		expect{ station.release_bike }.to raise_error "No bikes available"
	end
end

