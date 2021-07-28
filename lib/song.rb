require 'pry'

class Song
  include Memorable::InstanceMethods
  extend Memorable::ClassMethods

  attr_accessor :name
  attr_reader :artist

  @@all = []

  def self.all=(array)
    @@all = array
  end

  def initialize
    @@all << self
  end

  def self.find_by_name(name)
    @@all.detect{|a| a.name == name}
  end

  def self.all
    @@all
  end

  def artist=(artist)
    @artist = artist
  end

end
