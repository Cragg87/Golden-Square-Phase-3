require_relative '../lib/music_library.rb'

RSpec.describe "music library testing" do
  context 'receives two tracks' do
    it 'returns list of tracks' do
      music_library = MusicLibrary.new
      track_1 = double :fake_track_1, add: "Track 5, Singer 2"
      music_library.add(track_1)
      expect(music_library.all).to eq [track_1]
    end

    it "returns list of tracks matching keyword 'Band'" do
      music_library = MusicLibrary.new
      track_1 = double :fake_track_1, add: "Track 1, Band 1"
      music_library.add(track_1)
      expect(music_library.search("Band")).to eq [track_1]
    end
  end
end