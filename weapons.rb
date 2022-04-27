# Object oriented programming is a style of programming that seeks to model
# real world objects and the behavior of those objects in code 

# Classes work like templates, or blueprints
class Weapon
  attr_accessor :name, :atk, :defense
  def initialize(name, atk, defense) # this is called a constructor function
    @name = name
    @atk = atk
    @defense = defense
    puts 'Created new weapon: ' + name
  end

  def strike
    puts "You used #{@name} to strike your foe!"
  end

  def equip
    puts "You equipped #{@name}!"
  end

  def unequip
    puts "You removed #{@name}"
  end
end

w = Weapon.new('Sword', 25, 5)

w.strike

class Bow < Weapon
  # attr_reader :rng => this allows you to read an attribute
  # attr_writer :rng => this allows you to assign an attribute
  attr_accessor :rng # => this allows reading and assignment together
  def initialize(name, atk, defense, rng)
    super(name, atk, defense) # super is how we call the constructor function of the superclass
    @rng = rng
  end

  def strike
    puts "You fired an arrow from your #{@name}!"
  end
end

b  = Bow.new('Long bow', 10, 1, 5)
puts b

# A constructor function runs every time a new instance of an object is created

# An instance is an object that results from using that template/blueprint