class Song
    attr_reader :name, :artist, :genre
    @@all = []

    def initialize(name, artist_obj, genre_obj)
        @name = name
        @artist = artist_obj
        @genre = genre_obj
        @@all << self
    end

    def self.all
        @@all
    end
end