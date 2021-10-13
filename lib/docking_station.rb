
require_relative 'bike'

class DockingStation
   attr_reader :bike

  def docked_bike(bike)
    #guard condition
    fail 'Capacity Full' if @bike
    @bike = bike
  end

  def release_bike
    #guard condition
    fail 'No bikes available.' unless @bike
    @bike
  end

  #def bike
    #return @bike
  #end
end
