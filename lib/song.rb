class Song

attr_accessor :name, :artist, :genre

@@count = 0
@@genres = []
@@artists = []

def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre

  @@count += 1
  @@genres << genre #if !@@genres.include?(genre)
  @@artists << artist #if !@@artists.include?(artist)
end

def self.count
  @@count
end

def genres
  @@genres
end

def artists
  @@artists
end

def genre_count

end

def artist_count

end





end
