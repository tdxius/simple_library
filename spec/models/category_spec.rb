require 'rails_helper'

RSpec.describe Category, type: :model do
  context 'validation tests' do
    it 'ensures name presence' do
      category = build(:category, name: nil)
      expect(category).to_not be_valid
    end

    it 'should save successfully' do
      category = build(:category)
      expect(category).to be_valid
    end
  end
end
