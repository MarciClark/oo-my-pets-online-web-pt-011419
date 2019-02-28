class Cat
  
  attr_reader :name
  attr_accessor :mood
  
  def initialize(name, mood)
    @name = name
    @mood = mood
  end
end