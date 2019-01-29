require 'pry'
class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(song_name, artist, genre)
    @name = song_name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genres
    @@genres.uniq!
  end

  def self.genre_count
    genre_hash = {}
    @@genres.each do |genre|
      if genre_hash[genre] #genre already in the hash
        genre_hash[genre] += 1
      else #if new genre
        genre_hash[genre] = 1
      end
    end
    genre_hash
  end

  def self.artist_count
    genre_hash = {}
    @@genres.each do |genre|
      if genre_hash[genre] #genre already in the hash
        genre_hash[genre] += 1
      else #if new genre
        genre_hash[genre] = 1
      end
    end
    genre_hash
  end

  end
end
