class Genre 
  attr_accessor :genre
  
  @@all = []
  
  def initialize (genre)
    @genre = genre 
    @@all << self
  end 
  
  def self.all 
    @@all 
  end 
  
  def songs 
    
  end 
  
  def artists
    
  end 
  
end 