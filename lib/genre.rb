class Genre
  attr_accessor :name
    @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs
    Song.all.select { |name| name.genre == self}
  end
  
  def artists
    arr = []
    songs.each { |name| arr << name.artist}
    arr
  end
end