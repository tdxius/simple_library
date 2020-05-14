require 'rails_helper'

describe 'Books Create' do
  let(:user) { create(:user) }
  let!(:categories) { create_list(:category, 5) }
  let(:name) { "Življenje v morju" }
  let(:author) { "Klemen Koala" }
  let(:year) { 2020 }

  describe 'Create a new book' do
    it 'creates a book' do
      login_as(user, :scope => :user)
      visit new_book_path

      fill_in 'book_name', with: name
      fill_in 'book_author', with: author
      fill_in 'book_year', with: year
      find("#book_category_id option[value='#{categories[2].id}']").select_option
      select categories[2].name, from: 'book_category_id'
      find('[type="submit"]').click

      expect(page).to have_current_path(books_path)

      Book.last.yield_self do |book|
        expect(book.name).to eq(name)
        expect(book.author).to eq(author)
        expect(book.year).to eq(year)
        expect(book.category_id).to eq(categories[2].id)
      end
    end
  end
end
