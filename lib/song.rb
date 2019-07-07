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
    @@artists.select.with_index {|artist, index|
      if !@@artists[0..index-1].contains?(artist)
        artist
      end
    }
  end

  def self.genres
    @@genres
  end

end
