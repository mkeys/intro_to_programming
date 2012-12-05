=begin 
Introduction to methods assignment.  Calculating how much 
time my kitchen gets used to make breakfast.
=end

# This is a method without variables
def cooking
  "Grab the butter, we're about to be cookin."
end

# This method has variables
def poach_eggs (egg_stuff)
  (egg_stuff[:number_of_eggs] * egg_stuff[:minutes_to_poach])
end

# This method has a default variable
def toast_english_muffin (toast = 2)
  "My english muffins need #{toast} minutes in the toaster."
end

# This method returns a boolean
def healthy? (tablespoons_of_butter, butter_calories = 102)
  (tablespoons_of_butter * butter_calories) < 75
end

# This method uses a float
def making_coffee (number_of_cups = 1, minutes_per_cup = 0.8256)
  (number_of_cups * minutes_per_cup).round(2)
end

def topping_type (topping)
  toppings = ['green chili', 'cholula', 'shredded cheese']

  if toppings.include?(topping.downcase)
    "Yummy yummy, cooking with #{topping}."
  else
    "What do I look like... a chef?"
  end
end

# Variables

egg_stuff = {:number_of_eggs => 2, :minutes_to_poach => 5}
toast = 3
tablespoons_of_butter = 1.2
number_of_cups = 2

puts cooking

puts "It takes #{poach_eggs(egg_stuff)} minutes to poach the eggs."

puts toast_english_muffin

puts "Am I going to be healthy today? #{healthy?(tablespoons_of_butter)}"

puts "Oh you want a cup of coffee too?  OK, I'll make enough for you.  That will take me #{making_coffee(number_of_cups)} minutes."

puts topping_type("Green Chili")
