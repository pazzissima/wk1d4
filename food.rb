
pizza = ["cheese", "gluten", "tomatoes"]
pan_seared_scallops = ["scallops", "lemons", "pasta", "olive oil"]
water = ["h", "h", "o"]
 
class AllergyError < ArgumentError
end
 
class Person
 
  def initialize(name, allergies = [])
    @name = name
    @allergies = allergies
    @stomach = []
  end
 
  def stomach()
    @stomach = stomach
    return @stomach
  end
 
 
  def eat(food)
  	allergy_watch(food)
  end
 
  def allergy_watch(food)
 
  	begin
  		if food.include?(@allergies)
  			raise AllergyError.new("This food has #{@allergies}")
  		end
  	   @stomach += food
  		
  	rescue AllergyError => e
  		puts "Halt #{@name}! There was an allergy in your food. #{e}"
 
  	end
 
  end
 
 
 
  end
 
person_1 = Person.new("Chris", "gluten")
person_1.eat(pizza)
 
person_2 = Person.new("Beth", "scallops")
person_2.eat(pan_seared_scallops)