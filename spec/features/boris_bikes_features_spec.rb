require 'docking_station'

feature "User can get a working bike from docking station" do 
	scenario "A working bike is released from the docking station at the user's request" do 
		station = DockingStation.new #We create a new docking station that we can work with
		bike = station.release_bike #the docking station releases a bike
		expect(bike).to be_working #the bike must be working
	end
end