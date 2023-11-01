system("clear")

module Swim
  def swim
    "I can swim!"
  end
end

class Animal
  attr_accessor :alive, :age

  def initialize
    @alive = true
    @age = 0
  end

  def age_one_year
    @age += 1
    "I am #{age} years old!"
  end
end

class Fish < Animal
  include Swim
  attr_accessor :cold_blooded

  def initialize
    @cold_blooded = true
    super()
  end
end

class Salmon < Fish
  attr_accessor :species

  def initialize(species)
    @species = species
    super()
  end

  def info
    "Description: #{self.class} | Species: #{@species} | Age: #{@age} | isAlive: #{@alive} | Cold-blooded: #{@cold_blooded}"
  end

  def is_4_years_old
    if @age >= 4
      @alive = false
      puts self.info
    end
  end
end

class Mammal < Animal
  attr_accessor :warm_blooded

  def initialize
    @warm_blooded = true
    super()
  end
end

class Bear < Mammal
  include Swim

  def initialize
    super
  end

  def info
    "Description: #{self.class} | Warm_blooded: #{@warm_blooded} | Alive: #{@alive} | Age: #{@age} |"
  end

  def is_20_years_old
    if @age >= 20
      @alive = false
      puts self.info
    end
  end
end

class Eagle < Mammal
  attr_accessor :talk, :can_fly

  def initialize(talk)
    @talk = talk
    @can_fly = true
    super()
  end

  def info
    "Description: #{self.class} | Can Fly: #{@can_fly} | Warm Blooded: #{@warm_blooded} | Age: #{@age} | Language: #{@talk}"
  end
end

animals = [Salmon.new("Atlantic"), Salmon.new("New England"), Bear.new, Bear.new, Eagle.new("Squak Squak"), Eagle.new("Squak and Squeal")]

1..3.times { animals[0].age_one_year }
1..7.times { animals[1].age_one_year }
1..4.times { animals[2].age_one_year }
1..10.times { animals[3].age_one_year }
1..2.times { animals[4].age_one_year }
1..8.times { animals[5].age_one_year }

p animals[0]
p animals[1]
p animals[2]
p animals[3]
p animals[4]
p animals[5]

animals

# puts animals.age.sort! { |youngest_animal, oldest_animal| youngest_animal <=> oldest_animal }

animals.sort! { |youngest_animal, oldest_animal| youngest_animal.age <=> oldest_animal.age }

p animals

puts "\n\n"

puts "#{animals[1].class} | #{animals[1].swim}"
puts "#{animals[2].class} | #{animals[2].swim}"

puts "\n\n"
