machine = [
  {:name => 'Coke', :amount_left => 12},
  {:name => 'Diet Coke', :amount_left => 10},
  {:name => 'cream soda', :amount_left => 9},
  {:name => 'root beer', :amount_left => 11}
]



def sodas_left (soda_machine)
  while 1 == 1
	  puts "Would you like to buy or reload a soda?"
	  action = gets.chomp.downcase
	  	
	  	if action == "buy"
			  puts "What kind of soda would you like to buy?  You can choose between Coke, Diet Coke, cream soda or root beer."
			  soda = gets.chomp.downcase
				  
				  if soda == "coke"
				  	soda_machine[0][:amount_left] -= 1
				  	puts "There are #{soda_machine[0][:amount_left]} #{soda_machine[0][:name]}s left."
				  elsif soda == "diet coke"
				  	soda_machine[1][:amount_left] -= 1
				  	puts "There are #{soda_machine[1][:amount_left]} #{soda_machine[1][:name]}s left."
				  elsif soda == "cream soda"
				  	soda_machine[2][:amount_left] -= 1
				  	puts "There are #{soda_machine[2][:amount_left]} #{soda_machine[2][:name]}s left."
				  elsif soda == "root beer"
				  	soda_machine[3][:amount_left] -= 1
				  	puts "There are #{soda_machine[3][:amount_left]} #{soda_machine[3][:name]}s left."
				  else
				  	puts "You're out of luck."
				  end #end if soda

			elsif action == "reload"
			  puts "What kind of soda would you like to reload? You can choose between Coke, Diet Coke, cream soda or root beer."
			  reload = gets.chomp.downcase

			    if reload == "coke"
			    	soda_machine[0][:amount_left] += 1
				  	puts "There are #{soda_machine[0][:amount_left]} #{soda_machine[0][:name]}s left."
				  elsif reload == "diet coke"
				  	soda_machine[1][:amount_left] += 1
				  	puts "There are #{soda_machine[1][:amount_left]} #{soda_machine[1][:name]}s left."
				  elsif reload == "cream soda"
				  	soda_machine[2][:amount_left] += 1
				  	puts "There are #{soda_machine[1][:amount_left]} #{soda_machine[2][:name]}s left."
				  elsif reload == "root beer"
				  	soda_machine[3][:amount_left] += 1
				  	puts "There are #{soda_machine[2][:amount_left]} #{soda_machine[3][:name]}s left."
				  else
				  	puts "What, can't you read??"
				  end # end if reload
			else
				puts "Sorry, this vending machine doesn't do THAT."
			end #end if action	  
	end #end while 
end #end def

sodas_left(machine)