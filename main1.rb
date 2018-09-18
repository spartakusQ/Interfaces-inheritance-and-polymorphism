require_relative 'train'
require_relative 'route'
require_relative 'train_station'
require_relative 'carriage'
require_relative 'cargo_train'
require_relative 'cargo_carriage'
require_relative 'passenger_train'
require_relative 'passenger_carriage'

class Main
  attr_accessor :station, :trains, :train, :route,
                :stations, :number, :name, :carriage

  def initialize
    @stations = []
    @trains = []
    @routes = []
  end

  def menu
    puts %Q(
      Выберете нужное вам меню:
      1.Создание станции. rdy
      2.Создание поезда. rdy
      3.Создание маршрута и управление станциями.
      4.Назначение маршрута поезду.
      5.Добавление выгоны к поезду.
      6.Отцепить вагоны от поезда.
      7.Перемещать поезд по маршруту вперёд и назад.
      8.Просматривать список станций и список поездов на станции.
      0.Выход из меню.
      )
      puts 'Введите номер команды: '
      input = gets.to_i
      case input
      when 1
        create_station
      when 2
        add_train
      when 3
      when 4
      when 5
      when 6
      when 7
      when 8
      when 0
        exit
      else puts "Вы ввели неправильное значение команды."
      menu
      end
    end
    private

    def create_station
      puts 'C каким названием?'
      name = gets.chomp
      stations << TrainStation.new(name)
      puts "Построена станция #{name}"
      menu
    end

    def add_train
      puts "Выберите какой поезд вы хотите создать?"
      puts "1 - пассажирский"
      puts "2 - грузовой"
      puts "0 - выход в меню"
      input = gets.chomp.to_i

      case input
      when 1
        puts "Для создания пассажирского поезда, введите номер поезда "
        number = gets.chomp.to_i
        trains << PassengerTrain.new(number)
        puts "Создан пассажирский поезд №#{number}"        
        menu
      when 2
        puts "Для создания грузового поезда, введите номер поезда"
        number = gets.chomp.to_i
        trains << CargoTrain.new(number)
        puts "Создан грузовой поезд №#{number}"
        menu
      when 0
        menu
      else puts "Вы ввели неправильные данные"
      menu
      end
    end


  end
