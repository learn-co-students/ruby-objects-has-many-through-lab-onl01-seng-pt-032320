class Genre

  attr_accessor :name
@@all = []
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_song(song)
    self.songs << song
  end

def self.all
  @@all
end

  def songs
    @songs
  end

#has many artists through songs
def artists
  self.songs.collect {|song| song.artist}
end



end
