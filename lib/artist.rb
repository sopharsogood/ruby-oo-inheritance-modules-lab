require 'pry'

class Artist
  include Memorable::InstanceMethods
  extend Memorable::ClassMethods  

  attr_accessor :name
  attr_reader :songs

  @@all = []

  def self.all=(array)
    @@all = array
  end

  def initialize
    @@all << self
    @songs = []
  end

  def self.find_by_name(name)
    @@all.detect{|a| a.name == name}
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end
end
