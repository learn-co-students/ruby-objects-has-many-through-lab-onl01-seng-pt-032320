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
    Song.all.select{ |s| s.genre == self}
  end
  
  def artists
    array = []
    Song.all.select{ |s| array << s.artist  if s.genre == self}
    array
  end
end