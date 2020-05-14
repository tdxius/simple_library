class CategoryPolicy < ApplicationPolicy
  resource :category

  def index?
    true
  end

  def create?
    true
  end

  def update?
    true
  end

  def destroy?
    category.books.empty?
  end
end
