require 'pry'
class Artist
  
  attr_accessor :name
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def songs
    Song.all.select{ |s| s.artist == self}
  end
  
  def new_song(name, genre)
    Song.new(name, self, genre)
  end
  
  def genres
    array = []
    Song.all.select{ |s| array << s.genre if s.artist == self }
    array
  end
  
end