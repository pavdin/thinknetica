class Route
  attr_reader :stations

  def initialize(first_station, last_station)
    @stations = [first_station, last_station]
  end

  def add_station(station)
    @stations.insert(-2, station)
  end

  def remove_station(station)
    return if [@stations.first, @stations.last].include?(station)
    @stations.delete(station)
  end

  def first_station
    stations.first
  end

  def last_station
    stations.last
  end

  def show_stations
    stations.each_with_index { |s, i| puts "#{i + 1} - #{s.name}"}
  end
end
