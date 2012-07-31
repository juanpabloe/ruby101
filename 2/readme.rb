# RUBY 101 - Classes

#Classes
  #Definition
  #The method initialize is the constructor of the class
  #Instace variables are defined with a @ before the its name
  class Person
    def initialize(name, last_name)
      @name = name
      @last_name = last_name
    end
  end
  
  dylan = Person.new('Dylan', 'Herts') #Create a new object
  dylan.inspect
  
#Access methods
  class Dog
    attr_reader     :age   # Creates just the get method
    attr_writer     :name  # Creates just the set method
    attr_accessor   :owner  # Creates both methods
    
    def initialize()
      @age = 0 
    end
  end
  
  #A new dog in the house
  dog = Dog.new
  
  #Assigning a name
  dog.name = 'Spike'
  dog.owner # => nil
  dog.owner = dylan
  dog.owner # => Person object
  
#Instance methods
  class Cat
    def kick
      puts 'miaou [Please dont kick me sir]'
    end
  end
  
  street_cat = Cat.kick
  street_cat.kick # => miaou [Please dont kick me sir]
  
#Class methods
  class Horse
    
    def initialize(name)
      @name = name
    end
    
    #In java class methods are static
    def self.info
      'Big animal'
    end
    
    def info
      "#{Horse.info} called #{@age}" 
    end
    
  end
  
  horse = Horse.new('Tornado')
  Horse.info # => Big animal
  horse.info # => Big animal called Tornado
  
