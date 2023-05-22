require 'pry'
require_relative './concerns/memorable.rb'

class Artist
  extend Memorable


    attr_accessor :name, :songs
  
    @@all = []
  
    def initialize
      @songs = []
      @@all << self
    end
  
    def self.all
      @@all
    end
  
    # def self.count
    #   @@all.count
    # end
  
    # def self.reset_all
    #   @@all.clear
    # end
  
    def self.find_by_name(name)
      @@all.find { |artist| artist.name == name }
    end
  
    def add_song(song)
      @songs << song
    end
  
    def add_songs(songs)
      @songs += songs
    end
  
    def to_param
      name.downcase.gsub(' ', '-')
    end

end
