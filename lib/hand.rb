require_relative "deck"
require_relative "card"
require 'pry'

class Hand
  attr_reader :cards, :score
  attr_accessor :score

  def initialize(cards)
    @cards = cards
  end

  def calculate_hand
    @score = 0

    @cards.each do |card|

      if card.rank == Fixnum
        @score += card.rank.to_i
        binding.pry
      elsif card.face_card?
        @score += 10
        binding.pry
      elsif card.ace? && score <= 10
        @score += 11
      elsif card.ace? && score > 10
        @score += 1
        binding.pry
      end
    end

    return @score
  end
end
