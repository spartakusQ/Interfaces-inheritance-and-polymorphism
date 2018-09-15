#создание родительского класса carriage для passenger_carriage и cargo_carriage
class Carriage
  attr_reader :type, :number
  
  def initialize(number, type)
    @number = number
    @type = type
  end
end
