require("minitest/autorun")
require("minitest/rg")

require_relative("../room")
require_relative("../guest")
require_relative("../song")

class TestRoom < MiniTest::Test

  def setup()

    @song1 = Song.new("Rollins Band", "Shine")
    @song2 = Song.new("Future of the Left", "Sorry Dad, I Was Late For The Riots")
    @song3 = Song.new("Fugazi", "Waiting Room")
    @song4 = Song.new("Dead Kennedys", "Where Do Ya Draw The Line")

    @guest1 = Guest.new("James", 15, "Shine")
    @guest2 = Guest.new("Brian", 100, "Waiting Room")
    @guest3 = Guest.new("Steph", 5, "Sorry Dad, I Was Late For The Riots")
    @guest4 = Guest.new("Joey", 10, "Shine")

    @room1 = Room.new("Rock Room", 20)
    @room2 = Room.new("Punk Room", 1)

  end

  def test_get_room_type()
    assert_equal("Rock Room", @room1.get_room_name)
  end

  def test_get_room_capacity()
    assert_equal(1, @room2.get_max_capacity)
  end

  def test_get_current_guest_number()
    assert_equal(0, @room1.get_current_guest_number.length() )
  end

  def test_add_guest_to_room()
    @room2.add_guest_to_room(@guest2)
    assert_equal(1, @room2.get_current_guest_number.length() )
  end

  def test_remove_guest_from_room_by_name()
    @room2.remove_guest_from_room_by_name("Brian")
    assert_equal(0, @room2.get_current_guest_number.length())
  end

  def test_playlist_length()
    assert_equal(0, @room1.playlist_length.length() )
  end

  def test_add_song_to_playlist()
    @room1.add_song_to_playlist(@song1)
    assert_equal(1, @room1.playlist_length.length() )
  end

  def test_remove_song_from_playlist_by_name()
    @room1.add_song_to_playlist(@song1)
    @room1.remove_song_from_playlist_by_name("Shine")
    assert_equal(0, @room1.get_current_guest_number.length())
  end

  def test_check_if_room_is_at_capacity()
    @room2.add_guest_to_room(@guest2)
    assert_equal("Room is full!", @room2.check_if_room_is_at_capacity(@room2.get_current_guest_number.length(), @room2.get_max_capacity) )
  end

  def test_woooo()
    guest = @room1.add_guest_to_room(@guest1)
    song = @room1.add_song_to_playlist(@song1)

    assert_equal(["James: Woooo...!"], @room1.woooo(guest, song))
  end

  def test_woooo__multi()
    guest = @room1.add_guest_to_room(@guest1)
    song = @room1.add_song_to_playlist(@song1)

    assert_equal(["James: Woooo...!"], @room1.woooo(guest, song))
  end

end
