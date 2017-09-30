class Venue
  def initialize(name, admission_cost, capacity, rooms)
    @name = name
    @admission_cost = admission_cost
    @capacity = capacity
    @rooms = rooms
  end

  def name()
    return @name
  end

  def admission_cost()
    return @admission_cost
  end

  def capacity()
    return @capacity
  end

  def number_of_rooms()
    return @rooms.length
  end

  def add_a_room(new_room)
    @rooms << new_room
  end

  def take_entry_fee(guest_cash)
    guest_cash - @admission_cost
  end

end
