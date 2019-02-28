class Owner
  
  attr_reader :species 
  attr_accessor :name, :pets
  
  @@all = []
  
  def initialize(species)
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self 
  end 
  
  def self.all
    @@all
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all.clear
  end
  
  def say_species
    "I am a #{species}."
  end 
  
  def buy_fish(name)
    @@pets[:fishes] << Fish.new(fish)
  end
  
  def buy_cat(name)
    @@pets[:cats] << Cat.new(cat)
  end 
  
  def buy_dog(name)
    @@pets[:dogs] << Dog.new(dog)
  end
  
  def walk_dog
    @@pets[:dogs].each do |dog|
      dog.mood = 'happy'
  end
  
  def play_with_cats
    @@pets[:cats].each do |cat|
      cat.mood = 'happy'
  end

  def feed_fish
    @@pets[:fishes].each do |fish|
      fish.mood = 'happy'
  end
  
  def sell_pets
    pets.each do |type, pets|
    pets.map {|pet| pet.mood = "nervous"}
    end
    pets.clear
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end
end
