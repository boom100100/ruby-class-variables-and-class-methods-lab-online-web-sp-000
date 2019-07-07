class Song
  attr_accessor :name, :artist, :genre, @@count, @@artists, @@genres

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    
  end
end
