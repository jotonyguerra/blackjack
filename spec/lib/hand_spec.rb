require "spec_helper"
require "card.rb"
require "deck.rb"
require "pry"

RSpec.describe Hand do
  let(:hand) { Hand.new(["10♦", "A♥"]) }
    let(:hand2) { Hand.new(["8♦", "A♦"]) }
    let(:hand3) { Hand.new(["8♦", "2♦"]) }
    let(:hand4) { Hand.new(["A♦", "A♣"]) }

  describe ".new" do
    it "create a hand containing 2 card objects" do
      expect(hand.card.size).to eq(2)
      expect(hand.card.first).to eq("10♦")
      expect(hand.card.last).to eq("A♥")
    end
  end

  describe "#calculate_hand" do
    it "returns hand" do
      expect(hand.calculate_hand).to eq(21)
      expect(hand2.calculate_hand).to eq(19)
      expect(hand3.calculate_hand).to eq(10)
      expect(hand4.calculate_hand).to eq(12)
    end

  end
 end
