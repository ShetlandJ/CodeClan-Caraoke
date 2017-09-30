class Playlist
  def initialize(name, playlist)
    @name = name
    @playlist = playlist
  end

  def get_playlist_name()
    return @name
  end

  def get_playlist()
    return @playlist
  end

  def get_playlist_artists(artist)
    return artist
  end

  def get_playlist_songs(song)
    return song
  end

end
