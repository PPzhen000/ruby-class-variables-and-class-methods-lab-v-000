require 'pry'
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
  #binding.pry
  @@genres.each do |each_genre|
    if !genre_hash[each_genre] 
    genre_hash[each_genre] = 1
    else
    genre_hash[each_genre] = genre_hash[each_genre] + 1
    end
  end

  genre_hash

end

def self.artist_count

end





end
