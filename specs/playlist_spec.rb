require("minitest/autorun")
require("minitest/rg")

require_relative("../playlist")
require_relative("../song")


class TestPlaylist < MiniTest::Test

  def setup()
    @song1 = Song.new("Rollins Band", "Shine")
    @song2 = Song.new("Future of the Left", "Sorry Dad, I Was Late For The Riots")

    @song3 = Song.new("Fugazi", "Waiting Room")
    @song4 = Song.new("Dead Kennedys", "Where Do Ya Draw The Line")

    @playlist1 = Playlist.new("Rock Playlist", [@song1, @song2])
    @playlist2 = Playlist.new("Heavy Metal Playlist", [@song3, @song4])
  end

  def test_get_playlist_name()
    assert_equal("Rock Playlist", @playlist1.get_playlist_name)
  end

  def test_get_playlist()
    assert_equal([@playlist1], @playlist1.get_playlist())
  end

  def test_get_playlist_artist()
    assert_equal("Rollins Band", @playlist1.get_playlist_artists(@song1.get_artist))
  end

  def test_get_playlist_artist()
    assert_equal("Shine", @playlist1.get_playlist_artists(@song1.get_song))
  end

end
