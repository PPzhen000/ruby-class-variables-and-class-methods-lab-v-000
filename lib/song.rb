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

def self.genres
  @@genres.uniq
end

def self.artists
  @@artists.uniq
end

def genre_count
  genre_hash = {}
  genre_hash = @@genres.uniq.map {|x| genre_hash[x] = 0}
  #genre_hash = @@genres.map do |each_song|



end

def artist_count

end





end
