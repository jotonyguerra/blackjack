require_relative "card"
require_relative "deck"
require_relative "hand"
deck = Deck.new
player_cards = deck.deal(2)
computer_cards = deck.deal(2)
player_hand = Hand.new(player_cards)
computer_hand = Hand.new(computer_cards)

puts "welcome to Blackjack!"
puts "player was dealt #{player_hand.calculate_hand}"
## hand = deck.deal(2)
