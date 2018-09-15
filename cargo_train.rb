#класс грузового поезда, родительским является  поезд
class CargoTrain < Train

    def initialize(number, type = "cargo")
      super
    end

    def add_carriage(carriage)
      if carriage.instance_of?(CargoCarriage)
        super(carriage)
      else
        puts "У поезда и вагона разные типы."
      end
    end

end
