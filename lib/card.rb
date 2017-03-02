require_relative "deck"

class Card
  attr_reader :rank, :suit

  attr_accessor :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def display
    "#{@rank}#{@suit}"
  end

  def face_card?
    ['J', 'Q', 'K'].include?(@rank)
  end

  def ace?
    ['A'].include?(@rank)
  end


end
