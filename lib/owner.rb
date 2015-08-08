class Owner

@@owners = []


attr_accessor :name, :pets
attr_reader :species

  def initialize(species)
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@owners << self
  end

  def say_species
    "I am a human."

  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end
  
  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs    
    @pets[:dogs].each {|dog| dog.mood = "happy"}

  end

  def play_with_cats
    @pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets

    @pets[:dogs].each {|dog| dog.mood = "nervous"}
    @pets[:cats].each {|cat| cat.mood = "nervous"}
    @pets[:fishes].each {|fish| fish.mood = "nervous"}

    @pets.delete(:dogs)
    @pets.delete(:cats)
    @pets.delete(:fishes)
      end

  def list_pets
     num_of_fish = @pets[:fishes].count
     num_of_dog = @pets[:dogs].count
     num_of_cat = @pets[:cats].count

     "I have #{num_of_fish} fish, #{num_of_dog} dog(s), and #{num_of_cat} cat(s)." 
  end


def self.all
  @@owners
end

def self.count
  @@owners.count
end

def self.reset_all
  @@owners = []
end

end

# rspec ./spec/owner_spec.rb:27 # Owner can initialize an owner
# rspec ./spec/owner_spec.rb:31 # Owner initializes with a species
# rspec ./spec/owner_spec.rb:39 # Owner can say its species
# rspec ./spec/owner_spec.rb:43 # Owner can have a name
# rspec ./spec/owner_spec.rb:48 # Owner is initialized with a pets attribute as a hash with 3 keys
# rspec ./spec/owner_spec.rb:52 # Owner can buy a fish
# rspec ./spec/owner_spec.rb:58 # Owner can buy a cat
# rspec ./spec/owner_spec.rb:64 # Owner can buy a dog
# rspec ./spec/owner_spec.rb:70 # Owner knows about its fishes
# rspec ./spec/owner_spec.rb:75 # Owner knows about its cats
# rspec ./spec/owner_spec.rb:80 # Owner knows about its dogs
# rspec ./spec/owner_spec.rb:85 # Owner walks the dogs which makes the dogs' moods happy
# rspec ./spec/owner_spec.rb:92 # Owner plays with the cats which makes the cats moods happy
# rspec ./spec/owner_spec.rb:99 # Owner feeds the fishes which makes the fishes' moods happy
# rspec ./spec/owner_spec.rb:106 # Owner can sell all its pets, which make them nervous
# rspec ./spec/owner_spec.rb:121 # Owner can list off its pets
# rspec ./spec/owner_spec.rb:11 # Owner Class methods keeps track of the owners that have been created
# rspec ./spec/owner_spec.rb:15 # Owner Class methods can reset the owners that have been created
# rspec ./spec/owner_spec.rb:20 # Owner Class methods can count how many owners have been created
