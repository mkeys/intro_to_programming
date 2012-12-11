#Create a deck that deals a card to each player

class Deck
	attr_accessor :card

	def deal
		card = rand(1..13)
		return 11 if card == 1
		return 10 if card >=10
		card
	end
end

class Hand
	attr_accessor :cards
	def initialize
		@deck = Deck.new
		@cards = []
		2.times do
			add_card 
		end
	end

	def add_card
		@cards.push(@deck.deal)
	end

	def total
		card_total = 0
		@cards.each do |x|
			card_total += x
		end
		card_total
	end

end

puts "Welcome to the Blackjack table. Let's play."
sleep 1
player_hand = Hand.new
puts "Your cards are #{player_hand.cards} and your total is #{player_hand.total}."



