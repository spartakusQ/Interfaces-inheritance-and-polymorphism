class MainMenu
  def start
    loop do
      puts 'Выберети нужное вам меню:'
      puts '1.Создать станции.'
      puts '2.Создать поезда.'
      puts '3.Создать маршруты и управлять станциями.'
      puts '4.Назначить маршрут поезду.'
      puts '5.Добавлять выгоны к поезду.'
      puts '6.Отцеплять вагоны от поезда.'
      puts '7.Перемещать поезд по маршруту вперёд и назад.'
      puts '8.Просматривать список станций и список поездов на станции.'
      puts '0.Выход из меню.'

      input = gets.to_i

      case input
      when 1        
      when 2
      when 3
      when 4
      when 5
      when 6
      when 7
      when 8
      when 0
        break
      end
    end
  end
end
