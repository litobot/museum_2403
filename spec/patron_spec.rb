require 'spec_helper'

RSpec.describe Patron do
  describe '#initialize' do
    it 'is an instance of Patron' do
      patron = Patron.new("Bob", 20)
      
      expect(patron).to be_an_instance_of(Patron)    
    end
    
    it 'has attributes' do
      patron_1 = Patron.new("Bob", 20)
      
      expect(patron_1.name).to eq("Bob")
      expect(patron_1.spending_money).to eq(20)
      expect(patron_1.interests).to eq([])
    end
    
    it 'can add interests' do
      patron_1 = Patron.new("Bob", 20)
      
      expect(patron_1.interests).to eq([])

      patron_1.add_interest("Dead Sea Scrolls")
      patron_1.add_interest("Gems and Minerals")
      patron_1.find_by_interest
      expect(patron_1.interests).to eq(["Dead Sea Scrolls", "Gems and Minerals"])
    end
  end
end
