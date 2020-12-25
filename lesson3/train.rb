class Train

  attr_reader :number, :type, :route
  attr_accessor :current_station, :speed, :number_of_cars

  def initialize(number, type, number_of_cars)
    @number = number
    @type = type
    @number_of_cars = number_of_cars
    @speed = 0
  end

  def raise_speed(speed)
    @speed += speed
  end

  def stop
    @speed = 0
  end

  def current_speed
    @speed
  end

  def number_of_cars
    @number_of_cars
  end

  def add_car
    if @speed == 0
      @number_of_cars += 1
    end
  end

 def delete_car
    if @speed == 0
      @number_of_cars -= 1
    end
  end

  def take_route(route)
    @route = route
    @current_station = @route.stations.first
    station.take_train(self)
  end

  def next_station
    @route.stations[@route.stations.index(@current_station) + 1]
  end

  def previous_station
    unless @current_station == @route.stations.first
      @route.stations[@route.stations.index(@current_station) - 1]
    end
  end

  def move_next_station
    return unless next_station
    current_station.send_train(self)
    next_station.take_train(self)
    @current_station += 1
  end

  def move_previous_station
    return unless previous_station
    current_station.send_train(self)
    previous_station.take_train(self)
    @current_station -= 1
  end

end
