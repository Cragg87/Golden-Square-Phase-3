class MusicLibrary
  def initialize
    @library = []
  end

  def add(track) 
    @track = track
    @library << @track
  end

  def all
    @library
  end
  
  def search(keyword)
    @library.select { |track| track.include?(keyword) }
  end
end