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

def self.genre_count
  genre_hash = {}
  @@genres.uniq.each do |x|
    genre_hash[x] = 0
    @@genres.map do |each_song|
      if each_song = x 
        genre_hash[x] += 1
      end 
    end
  end 
  
  genre_hash

end

def self.artist_count

end





end
