class Song
  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist, :genre

  

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre



  end
end
