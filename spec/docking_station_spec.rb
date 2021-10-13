
require "docking_station"

describe DockingStation do
  
  it 'DockingStation releases bike' do
    #subject refers to instance of DockingStation class
    bike = Bike.new
    subject.docked_bike(bike)
    expect(subject.release_bike).to eq(bike)
  end 

 #nested describe because we're describing behavious to this particular method.
  describe '#release_bike' do 
    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available.'
    end 
  end 

  describe '#docked_bike' do 
      it 'raises an error when full' do
        subject.docked_bike(Bike.new) #argument has been added as per docked_bike method.
        expect { subject.docked_bike Bike.new }.to raise_error 'Capacity Full'
      end 
    end 


  it 'Release a working bike' do
    bike = Bike.new 
    expect(bike.working?).to eq(true)
    # bike = subject.release_bike
    # subject.docked_bike(bike)
  end

  it 'Returns a bike to the docking station' do
    bike = Bike.new
    subject.docked_bike(bike)
    expect(subject.bike).to eq bike
    #subject.bike refers to the instance of the Bike class created on line 36
  end

end
