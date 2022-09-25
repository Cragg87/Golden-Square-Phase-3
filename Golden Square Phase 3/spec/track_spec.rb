require_relative '../lib/track.rb'

RSpec.describe do
  context "receives title and artist" do
    it "checks if they match keyword" do
      track_1 = Track.new("Happy Birthday", "Calum Wilmot")
      expect(track_1.track.include?("Happy")).to eq true
    end
  end
end