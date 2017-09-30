require("minitest/autorun")
require("minitest/rg")

require_relative("../song")

class TestSong < MiniTest::Test

  def setup()
    @song1 = Song.new("Rollins Band", "Shine")
  end

  def test_get_artist
    assert_equal("Rollins Band", @song1.get_artist)
  end

  def test_get_song
    assert_equal("Shine", @song1.get_song)
  end

end
