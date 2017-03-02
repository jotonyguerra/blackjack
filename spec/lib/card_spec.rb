require "spec_helper"
require "card.rb"
require "deck.rb"

RSpec.describe Card do
  let(:card) {Card.new("10", "♦")}

  describe ".new" do
    it "creates a card object with rank and suit" do
      expect(card.display).to eq("10♦")
    end
  end
  # Your tests here
end
