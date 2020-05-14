require 'pry'

class Dog
  @@all = []

  attr_accessor :name
  def initialize(name)
    @name = name
    self.save

  end

  def self.all #class reader method
    @@all
  end

  def self.print_all
    @@all.each do |dog|
      puts dog.name
    end
  end
  def self.clear_all
    @@all.clear
  end
  def save
  # @@all.each do |dog|
  #   self.save
  @@all << self
#  end
  end


end

fox = Dog.new("MRFOX")
marley = Dog.new("MARLEY")
Dog.all #=>  [#<Dog:0x00000000025635b8 @name="MRFOX">, #<Dog:0x0000000002575df8 @name="MARLEY">]
