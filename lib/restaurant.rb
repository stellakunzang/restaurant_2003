class Restaurant
attr_reader :opening_time, :name, :dishes

  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def closing_time(hours_open)
    integer_hours = @opening_time.to_i + hours_open
    "#{integer_hours.to_s}:00"
  end

  def add_dish(dish_name)
    @dishes << dish_name
  end

  def open_for_lunch
    true if @opening_time.to_i < 12
  end

  def menu_dish_names
    excited_dishes = []
    @dishes.each do |dish|
      excited_dishes << dish.upcase
    end
    excited_dishes
  end

  def announce_closing_time(hours_open)
    time = @opening_time.to_i + hours_open
    if time < 12
      return "#{@name} will be closing at #{time}:00AM"
    else
      pm_hours = time.to_i - 12
      return "#{@name} will be closing at #{pm_hours.to_s}:00PM"
    end
  end
end
