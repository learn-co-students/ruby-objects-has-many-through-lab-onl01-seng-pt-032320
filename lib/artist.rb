require "pry"
class Artist

  attr_accessor :name, :song, :genre
  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def songs
   Song.all.select {|song| song.artist == self}
  end

  def genres
    songs.map {|song| song.genre}
  end

  def new_song(name, genre)
    Song.new(name , self , genre)
  end
end
