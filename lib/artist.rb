require 'pry'

class Artist 
    
  attr_accessor :name, :genres
  
  @@all = []
    
  def initialize(name)
    @name = name 
    @@all << self
  end 
  
  def self.all
    @@all
  end 
  
  def songs
    Song.all.select { |song| song.artist == self}
  end 
  
  def new_song(name, genres)
    Song.new(name,self, genres)
  end
  
  def genres
    self.songs.collect do |song|
      song.genre
    end
  end
  
end