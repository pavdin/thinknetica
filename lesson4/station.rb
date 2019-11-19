class Station
  attr_reader :trains, :name

  def initialize(name)
    @name = name
    @trains = []
  end

  def arrival_train(train)
    @trains.push(train)
  end

  def departure_train(train)
    @trains.delete(train)
  end

  def trains_type(type)
    @trains.select { |train| type == train.type }.size
  end
end
