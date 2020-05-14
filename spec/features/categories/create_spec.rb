require 'rails_helper'

describe 'Categories Create' do
  let(:user) { create(:user) }
  let(:name) { "Category 1" }

  describe 'Create a new category' do
    it 'creates a category' do
      login_as(user, :scope => :user)
      visit new_category_path

      fill_in 'category_name', with: name
      find('[type="submit"]').click

      expect(page).to have_current_path(categories_path)
    end
  end
end
