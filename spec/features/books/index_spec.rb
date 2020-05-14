require 'rails_helper'

describe 'Books Index' do
  let!(:user) { create(:user) }
  let!(:books) { create_list(:book, 5) }

  describe 'Show books list' do
    it 'shows books' do
      login_as(user, :scope => :user)
      visit books_path

      rows = all('table tbody tr')

      expect(rows.count).to equal(5)
      expect(page).to have_current_path(books_path)
    end
  end
end
