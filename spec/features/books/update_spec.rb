require 'rails_helper'

describe 'Books Update' do
  let(:user) { create(:user) }
  let!(:categories) { create_list(:category, 5) }
  let(:book) { create(:book) }
  let(:name) { "Življenje v morju" }
  let(:author) { "Klemen Koala" }
  let(:year) { 2020 }

  describe 'Update a book' do
    it 'updates a book' do
      login_as(user, :scope => :user)
      visit edit_book_path(book)

      fill_in 'book_name', with: name
      fill_in 'book_author', with: author
      fill_in 'book_year', with: year
      find("#book_category_id option[value='#{categories[2].id}']").select_option
      select categories[2].name, from: 'book_category_id'
      find('[type="submit"]').click

      book.reload

      expect(page).to have_current_path(books_path)
      expect(book.name).to eq(name)
      expect(book.year).to eq(year)
      expect(book.author).to eq(author)
      expect(book.category_id).to eq(categories[2].id)
    end
  end
end
