require("minitest/autorun")
require("minitest/rg")

require_relative("../venue")
require_relative("../room")
require_relative("../guest")

class TestVenue < MiniTest::Test

  def setup()

    @guest1 = Guest.new("James", 15, "Shine")
    @guest2 = Guest.new("James", 15, "Shine")

    @room1 = Room.new("Rock Room", 20)
    @room2 = Room.new("Punk Room", 1)
    @room3 = Room.new("Pop Room", 10)

    @rooms = [@room1, @room2]

    @venue = Venue.new("Disco Dave The CyberSlave's Ultra Joyous Dance Inferno", 10, 100, @rooms)
  end

  def test_get_venue_name()
    assert_equal("Disco Dave The CyberSlave's Ultra Joyous Dance Inferno", @venue.name)
  end

  def test_get_admission_cost()
    assert_equal(10, @venue.admission_cost)
  end

  def test_get_capacity()
    assert_equal(100, @venue.capacity)
  end

  def test_get_number_of_rooms()
    assert_equal(2, @venue.number_of_rooms)
  end

  def test_add_a_room_to_venue()
    @venue.add_a_room(@room3)
    assert_equal(3, @venue.number_of_rooms)
  end

  def test_deduct_cash_for_entry()
    actual = @venue.take_entry_fee(@guest1.get_guest_cash_level)
    assert_equal(5, actual)
  end

end
