class Train
  attr_reader :number, :type, :speed, :route, :quantity_wagons

  def initialize(number, type, quantity_wagons)
    @number = number
    @type = type
    @quantity_wagons = quantity_wagons
    @speed = 0
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
    @quantity_wagons += 1 if speed.zero?
  end

  def remove_wagon
    return if speed != 0 || quantity_wagons == 0
    @quantity_wagons -= 1
  end

  def current_station
    @route.stations[@current_station_index]
  end

  def previous_station
    route.stations[@current_station_index - 1] unless route.stations[@current_station_index] == route.stations.first
  end

  def next_station
    route.stations[@current_station_index + 1] unless route.stations[@current_station_index] == route.stations.last
  end

  def move_back_station
    if previous_station
      @route.stations[@current_station_index].departure_train(self)
      previous_station.take_train(self)
      @current_station_index -= 1
    else
      puts 'Поезд не может поехать назад, т.к. находится на первой станции маршрута.'
    end
  end

  def move_next_station
    if next_station
      @route.stations[@current_station_index].departure_train(self)
      next_station.take_train(self)
      @current_station_index += 1
    else
      puts 'Поезд не может ехать вперед, т.к. находится на конечной станции маршрута.'
    end
  end
end
