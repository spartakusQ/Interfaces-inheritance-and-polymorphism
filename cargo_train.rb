#класс грузового поезда, родительским является  поезд
class CargoTrain < Train

    def initialize(number, type = "cargo")
      super
    end

    def add_carriage(carriage)
      if carriage.instance_of?(CargoCarriage)
        super(carriage)
      else
        puts "К грузовому поезду можно прицеплять только грузовые вагоны."
      end
    end

end
