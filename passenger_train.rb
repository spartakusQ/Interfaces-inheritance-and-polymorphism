#класс пассажирского поезда, родительским является поезд
class PassengerTrain < Train

  def initialize(number, type = "passenger")
    super
  end

  def add_carriage(carriage)
    if carriage.instance_of?(PassengerCarriage)
      super(carriage)
    else
      puts "К пассажирскому поезду можно прицеплять только пассажирские вагоны."
    end
  end

end
