require 'pry'
require_relative './concerns/memorable.rb'

class Song
  extend Memorable


  attr_accessor :name, :artist
  @@all = []

  def initialize
    @@all << self
  end

  def to_param
    name.downcase.gsub(' ', '-')
  end

  def self.all
    @@all
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all = []
  end

  def self.find_by_name(name)
    @@all.find {|song| song.name == name }
  end
end
