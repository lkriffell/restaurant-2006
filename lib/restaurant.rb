class Restaurant
  attr_reader :opening_time, :name, :dishes
  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def closing_time(hours)
    @opening_time = opening_time.split(":")
    @opening_time[0] = opening_time[0].to_i + hours
    if opening_time[0] > 12
      ampm = "PM"
    else
      ampm = "AM"
    end
    if opening_time[0] == 13
      opening_time[0] = 1
    elsif opening_time[0] == 14
      opening_time[0] = 2
    elsif opening_time[0] == 15
      opening_time[0] = 3
    elsif opening_time[0] == 16
      opening_time[0] = 4
    elsif opening_time[0] == 17
      opening_time[0] = 5
    elsif opening_time[0] == 18
      opening_time[0] = 6
    elsif opening_time[0] == 19
      opening_time[0] = 7
    elsif opening_time[0] == 20
      opening_time[0] = 8
    elsif opening_time[0] == 21
      opening_time[0] = 9
    elsif opening_time[0] == 22
      opening_time[0] = 10
    elsif opening_time[0] == 23
      opening_time[0] = 11
    elsif opening_time[0] == 24
      opening_time[0] = 12
    end
    @opening_time[0] = opening_time[0].to_s
    opening_time.insert(1,":")
    opening_time.insert(3,"#{ampm}").join
  end

  def add_dish(dish)
    @dishes << dish
  end

  def open_for_lunch
    @opening_time = opening_time.split(":")
    @opening_time[0] = opening_time[0].to_i
    if @opening_time[0] < 12
      true
    else
      false
    end
  end

  def menu_dish_names
    @dishes.map do |dish|
      dish = dish.upcase
    end
  end

  def announce_closing_time(hours)
    "#{@name} will be closing at #{closing_time(hours)}"
  end
end
