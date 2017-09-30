class Guest
  def initialize(name, current_cash, favourite_tune)
    @name = name
    @current_cash = current_cash
    @favourite_tune = favourite_tune
  end

  def get_guest_name()
    return @name
  end

  def get_guest_cash_level()
    return @current_cash
  end

  def get_guest_favourite_tune()
    return @favourite_tune
  end
  
  def can_guest_afford_entry(cost)
    if @current_cash >= cost
      true
    else
      return false
    end


  end
end
