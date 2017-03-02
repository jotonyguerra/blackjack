require "spec_helper"
require "deck.rb"
require "card"

RSpec.describe Deck do
    let(:deck) { Deck.new } # Creates a variable that can be used for tests

    describe "#build_deck" do
      # Remember that the '#' in '#build_deck' means it's a method.
      it "builds a deck of 52 cards" do
        expect(deck.cards.size).to eq 52
      end

      it "creates unique cards" do
        expect(deck.cards.uniq.size).to eq 52
      end

      it 'calls shuffle on the array of cards' do
        deck.build_deck
        expect(deck.cards.first.display).not_to eq 'Ace♣'
      end
    end
    describe "#deal" do

      it "deals number of cards" do
        expect(deck.deal(4).size).to eq(4)
      end

      it "removes number cards from the deck" do
        deck.deal(4)
        expect(deck.cards.length).to eq(48)
      end

    end


  end
