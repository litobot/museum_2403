require 'spec_helper'

RSpec.describe Exhibit do
  describe '#initialize' do
    it 'is an instance of Exhibit' do
      exhibit = Exhibit.new({name: "Gems and Minerals", cost: 0})

      expect(exhibit).to be_an_instance_of(Exhibit)
    end
    
    it 'is stores attributes in a hash' do
      exhibit = Exhibit.new({name: "Gems and Minerals", cost: 0})
    
      expect(exhibit.name).to eq("Gems and Minerals")
      expect(exhibit.cost).to eq(0)
    end
  end
end
