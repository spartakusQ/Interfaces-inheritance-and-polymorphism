class TrainStation
  attr_reader :station_name, :trains

  def initialize(station_name)
    @station_name = station_name
    @trains = []
    puts "Создана станция #{station_name}"
  end

  def get_train(train)
    trains << train
    puts "На станцию #{station_name} прибыл поезд #{train.number}"
  end

  def send_train(train)
    trains.delete(train)
    train.station = 0
    puts "Со станции #{station_name} отправился поезд под номером: #{train.number}"
  end


  def show_trains(type = nil)
    if type
      puts "Поезда на станции #{station_name} типа #{type}: "
      trains.each { |train| puts train.number if train.type == type }
    else
      puts "Поезда на станции #{station_name}: "
      trains.each{|train| puts train.number}
    end
  end
end
