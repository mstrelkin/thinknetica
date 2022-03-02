class Train #создаем класс "Поезд"

  attr_reader :number, :type, :route #создание геттера для переменных (чтение)
  attr_accessor :current_station, :speed, :number_of_cars #создание геттера и сеттера для переменных вместе

  def initialize(number, type, number_of_cars) #инициализация переменных класса Train
    @number = number
    @type = type
    @number_of_cars = number_of_cars
    @speed = 0
  end

  def raise_speed(speed) #метод повышения скорсоти поезда
    @speed += speed
  end

  def stop #метод остановки поездка
    @speed = 0
  end

  def stopped? #метод проверки стоит ли поезд
    @speed == 0
  end

  def current_speed #метод ввода текущей скорости? дублирует speed ?
    @speed
  end

  def number_of_cars #метод ввода количества вагона? лишний?
    @number_of_cars
  end

  def add_car #метод добавления вагона если поезд стоит
    if stopped?
    @number_of_cars += 1
    end
  end

  def delete_car #метод удаления вагона если поезд стоит
    if stopped?
    @number_of_cars -= 1
    end
  end

  def take_route(route) #добавление переменных маршрута и текущей станции к поезду
    @route = route
    @current_station = @route.stations.first
    station.add_train(self)
  end

  def next_station #вывод следующей станции
    if @current_station == @route.stations.last
      puts "Поезд уже на конечной станции маршрута"
    else
      @route.stations[@route.stations.index(@current_station) + 1]
    end
  end

  def previous_station #вывод предыдущей станции
    if @current_station == @route.stations.first
      puts "Поезд уже на первой станции маршрута"
    else
      @route.stations[@route.stations.index(@current_station) - 1]
    end
  end

  def move_next_station #перемещение поезда на следующую станцию
    if current_station != @route.stations.last
      current_station.delete_train(self)
      next_station.add_train(self)
      @current_station += 1
    end
  end

  def move_previous_station #перемещение поезда на предыдущую станцию
    if current_station != @route.station.first
      current_station.delete_train(self)
      previous_station.add_train(self)
      @current_station -= 1
    end
  end

end
