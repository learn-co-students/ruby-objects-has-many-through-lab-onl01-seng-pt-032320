class Artist
attr_accessor :name, :songs, :genre

@@all = []
def initialize(name)
  @name = name
  @songs = []
  @@all << self
end

def self.all
  @@all
end

def new_song(song_name,genre)
  song_name = Song.new(song_name, self, genre)
  @songs << song_name
end

def songs
  Song.all.select {|song| song.artist == self}
end

end
