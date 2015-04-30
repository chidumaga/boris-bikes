require 'dockingstation'


feature "Docking station releases bikes" do
	scenario "Bike is released to user from docking station" do
		station = DockingStation.new
		bike = station.release_bike
		expect(bike).to be_working
	end
end