# Genre
#   #name
#     has a name 
#   #songs
#     has many songs
#   .all
#     knows about all genre instances
#   #artists
#     has many artists, through songs


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
    Song.all {|song| song.genre == self}
  end

  def artists
   songs=Song.all.select{|song| song.genre==self}
   songs.map{|song| song.artist}
 end
end
