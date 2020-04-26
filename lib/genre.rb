def Genre

attr_accessor :genre, :artist, :songs

@@all = []

def initialize(genre)
  @genre = genre
  @@all << self
end

def self.all
  @@all
end



end
