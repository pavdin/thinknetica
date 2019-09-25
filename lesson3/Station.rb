class Station
  attr_reader :trains, :name
  
  def initialize(name)
    @name = from_name
    @trains = []
  end

  def arrival_train(train)
    @trains.push(train)
  end

  def departure_train(train)
    @trains.delete(train)
  end
end
