class MusicLibrary
  def initialize
    # ...
  end

  def add(track) # track is an instance of Track
    # Track gets added to the library
    # Returns nothing
  end

  def all
    # Returns a list of track objects
  end
  
  def search(keyword) # keyword is a string
    # Returns a list of tracks that match the keyword
  end
end

# Examples:

# 1. Returns list of tracks
# music_library = MusicLibrary.new
# track_1 = Track.new("Track 1", "Band 1")
# track_2 = Track.new("Track 2", "Singer 2")
# music_library.add(track_1)
# music_library.add(track_2)
# music_library.all => # [track_1, track_2]

# 2. Returns list of tracks matching keyword "Singer"
# music_library = MusicLibrary.new
# track_1 = Track.new("Track 1", "Band 1")
# track_2 = Track.new("Track 2", "Singer 2")
# music_library.add(track_1)
# music_library.add(track_2)
# music_library.search("Singer") => # [track_2]

