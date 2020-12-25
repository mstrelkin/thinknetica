class Route

  attr_reader :stations

  def initialize(beginning_station, end_station)
    @stations = [beginning_station, end_station]
  end

  def add_station (station)
    @stations.insert(-2, station)
  end

  def delete_station (station)
    @stations.delete(station)
  end

  def stations_view
    @stations
  end

end

