class Station #создали класс "Станция"

  attr_reader :name_station, :trains #создание геттера для переменных

  def initialize(name_station) #создаем метод c начальными значениями класса "название станции"
    @name_station = name_station #Название станции
    @trains = [] #поезда на станции (имена поездов)
  end

  def add_train (train) #создаем метод добавления поезда на станцию
    @trains << train
  end

  def delete_train (train) #метод удаления поезда со станции
    @trains.delete(train)
  end

  def type_train (type) #метод вывода списка поездов на станции по типу поезда
    @trains.each do |train| 
      if train.type == type
        puts train
      end
    end
  end

end
