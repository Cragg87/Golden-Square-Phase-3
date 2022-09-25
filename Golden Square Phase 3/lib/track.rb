class Track
  def initialize(title, artist) # title and artist are both strings
    @track = "#{title}, #{artist}"
  end

  def track
    @track
  end

  def matches?(keyword)
      # keyword is a string
    # Returns true if the keyword matches either the title or artist
    @track.include?(keyword)
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