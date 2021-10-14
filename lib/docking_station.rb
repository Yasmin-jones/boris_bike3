require_relative 'bike'

class DockingStation

  DEFAULT_CAPACITY = 20 

  attr_reader :capacity


  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def docked_bike(bike)
    #guard condition
    fail 'Capacity Full' if full? 
    @bikes << bike # pops last entry of the array out 
  end

  def release_bike
    #guard condition
    fail 'No bikes available.' if empty?
    @bikes.pop 
  end

  private 

  attr_reader :bikes

  def full?
    @bikes.count >= capacity 
  end

  def empty?
  @bikes.empty? # will return true or false (methods with ?)
  
  end 
end
