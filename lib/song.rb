class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []
    @@genre_count = {}
    @@artists_count = {}
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists.append(@artist)
        @@genres.append(@genre)
        @@genre_count = @@genres.tally
        @@artist_count = @@artists.tally
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
       @@genre_count
    end

    def self.artist_count
        @@artist_count
     end
end