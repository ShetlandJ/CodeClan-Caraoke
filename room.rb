class Room
  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @guests = []
    @playlist = []
  end

  def get_room_name()
    return @name
  end

  def get_max_capacity()
    return @capacity
  end

  def get_current_guest_number()
    return @guests
  end

  def add_guest_to_room(guest)
    @guests << guest
  end

  def remove_guest_from_room_by_name(guest_name)
    for guest in @guests
      if guest == guest_name
        guest.pop
      end
    end
  end

  def playlist_length()
    return @playlist
  end

  def add_song_to_playlist(song)
    @playlist << song
  end

  def remove_song_from_playlist_by_name(song_name)
    for song in @playlist
      if song == song_name
        song.pop()
      end
    end
  end

  def check_if_room_is_at_capacity(current_guest_number, room_capacity)
    if current_guest_number == room_capacity
      return "Room is full!"
    end
  end

  def woooo(guest, favourite_tune)
    woooo_array = []

    for guest in @guests
      if guest.get_guest_favourite_tune == favourite_tune[0].get_song
        woooo_array << guest.get_guest_name + ": Woooo...!"
      end
      # end
      return woooo_array
    end

  end
end
