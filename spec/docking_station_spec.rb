#Unit test to test release_bike

require 'docking_station'

describe DockingStation do
	it { is_expected.to respond_to :release_bike }
end