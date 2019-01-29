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
  binding.pry

  def self.genres_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre] #genre already in the hash
        genre_count[genre] += 1
      else #if new genre
        genre_count[genre] = 1
      end
    end
    genre_count
  end

  def artist_count

  end
end
