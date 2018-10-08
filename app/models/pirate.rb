class Pirate
  attr_accessor :name, :weight, :height

  @@all = []

  def initialize(name, weight, height)
    @name = name
    @height = height
    @weight = weight
    @@all << self
  end

  def self.all
    @@all
  end

  def ships
    Ship.all.select do |ship|
      ship.pirate == self
    end
  end
  
end
