require_relative '../lib/music_library.rb'
require_relative '../lib/track.rb'

RSpec.describe 'music library integration' do
  context 'receives two tracks' do
    it 'returns list of tracks' do
        music_library = MusicLibrary.new
        track_1 = Track.new("Track 1", "Band 1")
        track_2 = Track.new("Track 2", "Singer 2")
        music_library.add(track_1)
        music_library.add(track_2)
        expect(music_library.all).to eq [track_1, track_2]
    end
    
    it "Returns list of tracks matching keyword 'Singer'" do
      music_library = MusicLibrary.new
      track_1 = Track.new("Track 1", "Band 1")
      track_2 = Track.new("Track 2", "Singer 2")
      music_library.add(track_1.track)
      music_library.add(track_2.track)
      expect(music_library.search("Singer")).to eq [track_2.track]
    end
  end
end