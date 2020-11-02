class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @@count += 1
        @name = name
        @artist = artist
        @genre = genre
        @@artists << artist
        @@genres << genre
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        genre_hash = {}
        @@genres.each do |genre|
            genre_hash[genre] = @@genres.count {|n| n == genre}
        end
        genre_hash
    end

    def self.artist_count
        artist_count = {}
        @@artists.each do |artist|
            artist_count[artist] = @@artists.count {|num| num ==artist}
        end
        artist_count
    end

end