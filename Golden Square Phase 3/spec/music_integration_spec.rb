require_relative '../lib/music_library.rb'
require_relative '../lib/track.rb'

RSpec.describe 'music library integration' do
  let(:music_library) {MusicLibrary.new}
  context 'tracks are added to library' do
    it 'returns list of tracks' do
      track_1 = Track.new("Track 1", "Band 1")
      track_2 = Track.new("Track 2", "Singer 2")
      music_library.add(track_1)
      music_library.add(track_2)
      expect(music_library.all).to eq [track_1, track_2]
    end
  end
end