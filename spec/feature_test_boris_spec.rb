require 'dockingstation'

feature "Docking station releases bikes" do
	scenario "Bike is released to user from docking station" do
		station = DockingStation.new   # build a new docuking station, its empty
		station.dock Bike.new  #add a bike to the new docking station
		bike = station.release_bike  #now there is a bike to release so we release it.
		expect(bike).to be_working  #the bike thats been released is working
	end

	scenario "Docking station does not release a bike when there are none available" do 
		docking_station = DockingStation.new #build a new docking station
		expect { docking_station.release_bike }.to raise_error 'No bikes available' #the code in between the curly braces execute but are stopped by rspec from crashing the program
																					# there are no bikes in the docking station when we try and get one, so throw an error
	end
end