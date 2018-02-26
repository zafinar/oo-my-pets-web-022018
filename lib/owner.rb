require 'pry'
class Owner
  @@all = []
  @@count = 0

  attr_accessor :name, :pets
  attr_reader :species
  def initialize(species)
    @name = name
    @species = species
    @@all << self
    @@count += 1
    @pets = {:fishes =>[], :dogs =>[], :cats => []}

  end

  def self.all
    @@all
  end


  def self.reset_all
    @@all = []
    @@count = 0
  end

  def self.count
    @@count
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(fish)
    fish = Fish.new(fish)
    pets[:fishes] << fish
  end

  def buy_cat(cat)
    cat = Cat.new(cat)
    pets[:cats] << cat
  end

  def buy_dog(dog)
    dog = Dog.new(dog)
    pets[:dogs] << dog
  end

  def walk_dogs
    pets[:dogs].each{|dog| dog.mood = "happy"}
  end

  def play_with_cats
    pets[:cats].each{|cat| cat.mood = "happy"}

  end

  def feed_fish
    pets[:fishes].each{|fish| fish.mood = "happy"}
  end

  def sell_pets
    binding.pry
    pets.each{|type,animal| animal.each{|name| name.mood = "nervous"} }
    @pets = {:fishes =>[], :dogs =>[], :cats => []}

  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end


end
