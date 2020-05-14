require 'rails_helper'

describe 'Categories Update' do
  let(:user) { create(:user) }
  let(:category) { create(:category) }
  let(:name) { "Category 1" }

  describe 'Update a category' do
    it 'updates a category' do
      login_as(user, :scope => :user)
      visit edit_category_path(category)

      fill_in 'category_name', with: name
      find('[type="submit"]').click

      expect(page).to have_current_path(categories_path)

      category.reload

      expect(category.name).to eq(name)
    end
  end
end
