class Song 
  
  attr_accessor :song, :genre, :artist

  @@all = []

  def initialize(song,artist, genre)
    @song = song
    @genre = genre
    @artist = artist 
    
    @@all << self
  end
  
  def self.all
    @@all
  end 

end 