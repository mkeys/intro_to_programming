hoyal = [2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 11, 11]

def blackjack(deck)
	puts "Welcome!  Let's take some of your money. Type hit to get your cards."
	action = gets.chomp
	deck.shuffle!
	dealer_card_one = deck.pop
	dealer_card_two = deck.pop


		if action == "hit"
			card_one = deck.pop
			card_two = deck.pop
			hand_one = card_one + card_two
			puts "The dealer has flipped one of his cards which is a #{dealer_card_one}."
			puts "You drew a #{card_one} and a #{card_two}. Your total points are #{hand_one}."
			
				if hand_one > 21
					puts "You lose."
			
				elsif hand_one == 21
					puts "You win!"
			
				else 
					puts "Would you like to hit or stay?"
					action = gets.chomp

						if action == "hit"
							card_three = deck.pop
							puts "You drew a #{card_three}."
							hand_two = hand_one + card_three
							puts "You have #{hand_two} total points."

								if hand_two > 21
									puts "You lose."
									
								elsif hand_two == 21
									puts "You win!"

								else
									puts	"Would you like to hit or stay?"
									action = gets.chomp

									if action == "hit"
										card_four = deck.pop
										puts "You drew a #{card_four}."
										hand_three = hand_two + card_four
										puts "You have #{hand_three} total points."

											if hand_three > 21
												puts "You lose."

											elsif hand_three ==21
												puts "You win!"

											else
												puts "Sorry, not dealing another card."

											end

									elsif action == "stay"
										puts "Ok, you can stay with #{hand_two} points"	

									else
										puts "You can't do that in Blackjack"	

									end

								end

						elsif action == "stay"
							puts "Ok, you can stay with #{hand_one} points. Now it's the dealer's turn."
							
							dealer_hand_one = dealer_card_one + dealer_card_two
							puts "The dealer got a #{dealer_card_one} and a #{dealer_card_two} for #{dealer_hand_one} points."	
								if dealer_hand_one > 21
									puts "Dealer busts, you win!"
								
								elsif dealer_hand_one == 21
									puts "Dealer wins, sorry."
								
								elsif dealer_hand_one >= 17
									puts "The dealer stays."
								
								else
									puts "The dealer drew another card."
									dealer_card_three = deck.pop
									dealer_hand_two = dealer_hand_one + dealer_card_three
									puts "The dealer dealt a #{dealer_card_three} for #{dealer_hand_two} points."

									if dealer_hand_two > 21
										puts "Dealer busts, you win!"

									elsif dealer_hand_two == 21
										puts "Dealer wins, sorry."

									elsif dealer_hand_two >= 17
										puts "The dealer stays."

									else
										puts "The dealer drew another card."
										dealer_card_four = deck.pop
										dealer_hand_three = dealer_hand_two + dealer_card_four
										puts "The dealer dealt a #{dealer_card_four} for #{dealer_hand_three} points."

										if dealer_hand_three > 21
											puts "Dealer busts, you win!"

										elsif dealer_hand_three == 21
											puts "Dealer wins, sorry."

										elsif dealer_hand_three >= 17
											puts "The dealer stays."

										else
											puts "The dealer doesn't want to play anymore."

										end

									end

								end

						else
							puts "You can't do that in Blackjack, sir."

						end

				end

		else
			puts "That's not an option, bonehead."
		end
end

blackjack(hoyal)