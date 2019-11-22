class Train
  include ManufacturerCompanyName
  include InstanceCounter

  @@all_train = {}

  def self.find(number)
    @@all_train[number]
  end

  attr_accessor :speed, :wagons, :route
  attr_reader :number, :type

  def initialize(number)
    @number = number
    @type
    @wagons = []
    @speed = 0
    @@all_train[:nubmer] = self
    register_instance
  end

  def assign_route(route)
    @route = route
    @route.first_station.arrival_train(self)
    @current_station_index = 0
  end

  def up_speed(value)
    @speed += value
  end

  def down_speed(value)
    @speed -= value
    @speed = 0 if speed < 0
  end

  def add_wagon
    if speed.zero? and self.type == wagon.type
      @wagons << wagon
    end
  end

  def remove_wagon
    return if speed != 0 || quantity_wagons == 0
    if speed.zero? and self.type == wagon.type
      @wagons.delete(wagon)
    end
  end

  def current_station
    route.stations[@current_station_index]
  end

  def previous_station
    return unless @current_station_index > 0
    route.stations[@current_station_index - 1]
  end

  def next_station
    route.stations[@current_station_index + 1]
  end

  def move_back_station
    if previous_station
      current_station.departure_train(self)
      previous_station.arrival_train(self)
      @current_station_index -= 1
    end
  end

  def move_next_station
    if next_station
      @route.stations[@current_station_index].departure_train(self)
      next_station.arrival_train(self)
      @current_station_index += 1
    end
  end

  private
  # Не смог найти методы которые можно отнести к приватным.
  # Все методы, вроде, требуются для управления объектами из вне. А переменная speed с attr_reader
end
