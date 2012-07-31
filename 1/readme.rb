# RUBY 101 - Basic
# Everything after a # is a comment in Ruby

#Variables
  # Datatypes dont matter in Ruby
  im_a_string = "Hello!"
  im_an_integer = 100
  im_a_boolean = true

#Output (Write something)
  puts "Hi from Ruby"
  #String interpolation
  puts "#{im_a_string} from Ruby" # => Hello! from Ruby

#Methods
  #Definition
  def say_hi
    puts "Hi, this is from a method"
  end
  
  #Calling 
  say_hi # => Hi, this is from a method
  
  #Methods with params
  def say_hi_to(name)
    puts "Hello #{name}"
  end
  
  say_hi_to("Krishna") # => Hello Krishna

  #Methods with optional params
  def greet!(name='dude')
    puts "Hello #{name}!" 
  end
  
  greet!("Dylan") # => Hello Dylan!
  greet! # => Hello dude!
  
  #Methods that return values
  def square(num)
    num * num
  end
  puts square(5) # => 25

#Conditions
  #Sintaxis 
  if true
    puts "Im always entering this section"
  else
    puts "No one pays attention to me"
  end
  
  #Super variations
  going_well = true
  uber_fail = false
  
  puts "Everything is going well" if going_well # => Everything is going well 
  puts "Still going well" unless uber_fail # => Still going well
  
#Arrays - Collections
  empty_array = []
  numbers = [1, 2]
  
  #Push a new element to the array
  numbers << 3 # => [1,2,3]
  numbers << 4 # => [1,2,3,4]
  numbers << "hello" # => [1,2,3,4,"hello"]

  #Access the elements of an array
  numbers.first # => 1
  numbers[1] # => 2
  numbers.last # => "hello"
  [1,2,3,13].push("new") # => [1,2,3,13,"new"]

  #Transforming arrays 
  [1,2,3,4,5].map { |i| i + 1 } # => [2,3,4,5,6]
  #Filtering elements in an array
  [1,2,3,4,5,6].select { |number| number % 2 == 0 } # => [2,4,6]
  
#Hashes
  empty_hash = {}
  person = { :name => 'Juan Pablo', :age => 21 }
  
  #Introduce elements to a hash
  person[:last_name] = 'Escobar' # => { :name => 'Juan Pablo', :age => 21, :last_name => 'Escobar' }
  
  #Access elements
  person[:name] # => Juan Pablo
  person['name'] # => Juan Pablo

#Debugging with inspect
  puts numbers.inspect # => [1,2,3,4,"hello"]
  puts person.inspect # => { :name => 'Juan Pablo', :age => 21, :last_name => 'Escobar' }
  
#Loops
  #each
  sum = 0
  [1,2,3,4].each { |value| sum += value }
  puts sum # => 10
  
  #while
  total = 0
  while total < 10 do
    total += 1
  end 
  puts total # => 10
  
