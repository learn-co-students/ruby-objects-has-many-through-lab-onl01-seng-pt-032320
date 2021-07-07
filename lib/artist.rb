class Artist
attr_accessor :name, :songs, :genres

@@all = []
def initialize(name)
  @name = name
  @songs = []
  @genres = []
  @@all << self
end

def self.all
  @@all
end

def new_song(song_name,genre)
  song = Song.new(song_name, self, genre)
end

def songs
  Song.all.select {|song| song.artist == self}
end

def genres
  Song.all.collect do |song|
    if song.artist == self
      @genres << song.genre
    end
  end
  @genres
end

end
