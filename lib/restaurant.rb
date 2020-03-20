class Restaurant
attr_reader :opening_time, :name, :dishes

  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def closing_time(hours_open)
    (@opening_time.to_i + hours_open).to_s + ":00"
  end

  def add_dish(dish_name)
    @dishes << dish_name
  end

  def open_for_lunch?
    return true if @opening_time.to_i < 12
    false
  end

  def menu_dish_names
    @dishes.map do |dish|
      dish.upcase
    end

    # LONG VERSION WITH EACH:
    # excited_dishes = []
    # @dishes.each do |dish|
    #   excited_dishes << dish.upcase
    # end
    # excited_dishes

    # OR @dishes.map { |dish| dish.upcase }
    # OR @dishes.map(&:upcase)
  end

  def announce_closing_time(hours)
    if closing_time(hours).to_i > 12
      clock_time = (closing_time(hours).to_i - 12 ).to_s + ":00PM"
    else
      clock_time = closing_time(hours) + "AM"
    end
    "#{name} will be closing at #{clock_time}"
  end
    # CODE BEFORE REFACTORING TO UTILIZE PRIOR METHOD:
    # time = @opening_time.to_i + hours
    # if time < 12
    #   return "#{@name} will be closing at #{time}:00AM"
    # else
    #   pm_hours = time.to_i - 12
    #   return "#{@name} will be closing at #{pm_hours.to_s}:00PM"

end
