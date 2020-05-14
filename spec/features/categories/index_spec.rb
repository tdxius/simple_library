require 'rails_helper'

describe 'Categories Index' do
  let!(:user) { create(:user) }
  let!(:categories) { create_list(:category, 4) }
  let!(:category_without_books) { create(:category, books: []) }

  describe 'Show categories list' do
    it 'shows categories' do
      login_as(user, :scope => :user)
      visit categories_path

      rows = all('table tbody tr')

      expect(rows.count).to equal(5)
      expect(page).to have_current_path(categories_path)
    end
  end
end
