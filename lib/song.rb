class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@artists << artist
    @@genres << genre
    @@count += 1
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
    genre_count = {}
    @@genres.each {|item|
      if genre_count.keys.include?(item)
        genre_count[item] = genre_count[item]+1
      else
        genre_count[item] = 0
      end
    }
    genre_count
  end

  def self.artist_count
  end
end
