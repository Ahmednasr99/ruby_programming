# Object oriented programming is a style of programming that seeks to model
# real world objects and the behavior of those objects in code 

# Classes work like templates, or blueprints
class Weapon
  attr_accessor :name
  def initialize(name) # this is called a constructor function
    self.name = name
    puts 'Created new weapon: ' + name
  end
end

# A constructor function runs every time a new instance of an object is created

# An instance is an object that results from using that template/blueprint