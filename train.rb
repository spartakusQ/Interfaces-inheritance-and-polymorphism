class Train
  attr_accessor :speed, :number, :route, :station
  attr_reader :type, :car_count

  def initialize(number, type, car_count)
    @number = number
    @type = type
    @car_count = car_count
    @speed = 0
    puts "Создан поезд с номером #{number}. Тип: #{type}. Количество вагонов: #{car_count}."
  end

  def stop
    self.speed = 0
  end

  def add_car
    if speed.zero?
      self.car_count += 1
      puts "К поезду с номером #{number} прицепили вагон. Теперь их #{car_count}."
    else
      puts "Для прицепкт вагонов, поезд должен стоять."
    end
  end

  def remove_car
    if car_count.zero?
      puts "Вагонов уже не осталось."
    elsif speed.zero?
      self.car_count -= 1
      puts "От поезда с номером #{number} отцепили вагон. Теперь их #{car_count}."
    else
      puts "На ходу нельзя отцеплять вагоны!"
    end
  end

  def take_route(route)
    self.route = route
    puts "Поезду с номером #{number} задан маршрут #{route.stations.first.station_name} - #{route.stations.last.station_name}"
  end

  def go_to(station)
    if route.nil?
      puts "Без маршрута следования поезд не может отправиться."
    elsif @station == station
      puts "Поезд с номером #{@number} и так на станции #{@station.station_name}"
    elsif route.stations.include?(station)
      @station.send_train(self) if @station
      @station = station
      station.get_train(self)
    else
      puts "Станция #{station.station_name} не входит в маршрут поезда с номером#{number}"
    end
  end

  def stations_around
    if route.nil?
      puts "Маршрут следования поезда не задан."
    else
      station_index = route.stations.index(station)
      puts "Сейчас поезд на станции #{station.station_name}."
      puts "Предыдущая станция - #{route.stations[station_index - 1].station_name}." if station_index != 0
      puts "Следующая - #{route.stations[station_index + 1].station_name}." if station_index != route.stations.size - 1
    end
  end
end
