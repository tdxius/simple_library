require 'rails_helper'

RSpec.describe Book, type: :model do
  context 'validation tests' do
    it 'ensures name presence' do
      book = build(:book, name: nil)
      expect(book).to_not be_valid
    end

    it 'ensures author presence' do
      book = build(:book, author: nil)
      expect(book).to_not be_valid
    end

    it 'ensures year presence' do
      book = build(:book, year: nil)
      expect(book).to_not be_valid
    end

    it 'should save successfully' do
      book = build(:book)
      expect(book).to be_valid
    end
  end
end
