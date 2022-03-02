class Route #Создание класса "Маршрут"

  attr_reader :stations #создание геттера для переменной stations (возвращение текущего значения)

  def initialize(beginning_station, end_station) #метод конструктор, инициализация объекта с заданными локальными аргументами метода
    @stations = [beginning_station, end_station]
  end

  def add_station (station) #метод добавления промежуточной станции перед последней
    @stations.insert(-2, station) #вставка элемента b по индексу a
  end

  def delete_station (station) #метод удаления станции из маршрута
    @stations.delete(station)
  end

end
