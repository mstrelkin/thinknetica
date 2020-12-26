class Station

  attr_reader :name_station, :trains

  def initialize(name_station)
    @name_station = name_station
    @trains = []
  end

  def add_train (train)
    @trains << train
  end

  def delete_train (train)
    @trains.delete(train)
  end

  def type_train (type)
    @trains.each do |train|
      if train.type == type
        puts train
      end
    end
  end

end
