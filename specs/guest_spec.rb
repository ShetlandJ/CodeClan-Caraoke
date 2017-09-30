require("minitest/autorun")
require("minitest/rg")

require_relative("../guest")

class TestGuest < MiniTest::Test

  def setup()
    @guest1 = Guest.new("James", 15, "Shine")
  end

  def test_get_guest_name
    assert_equal("James", @guest1.get_guest_name)
  end

  def test_get_guest_current_cash
    assert_equal(15, @guest1.get_guest_cash_level)
  end

  def test_get_guest_favourite_tune
    assert_equal("Shine", @guest1.get_guest_favourite_tune)
  end

  def test_can_guest_afford_entry__yes
    assert_equal(true, @guest1.can_guest_afford_entry(10))
  end

  def test_can_guest_afford_entry__no
    assert_equal(false, @guest1.can_guest_afford_entry(100))
  end


end
