class Station
  attr_reader :trains, :name
  include InstanceCounter

  @@all_stations = []

  def self.all
    @@all_stations
  end

  def initialize(name)
    @name = name
    @trains = []
    @@all_stations.push self
    register_instance
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
