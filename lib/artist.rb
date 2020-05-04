
# Artist
#   #name
#     has a name
#   .all
#     knows about all artist instances
#   #songs
#     returns all songs associated with this Artist (FAILED - 1)
#   #new_song  !!!!
#     given a name and genre, creates a new song associated with that artist (FAILED - 2)
#   #genres !!!
#     has many genres, through songs (FAILED - 3)



class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def genres
    songs=Song.all.select{|song| song.artist==self}
    songs.map {|song| song.genre}
  end

end
