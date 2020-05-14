class CategoriesController < ApplicationController
  before_action :set_category

  def index
    @categories = Category.includes(:books).paginate(page: params[:page]).order('created_at DESC')
  end

  def new; end

  def create
    @category.assign_attributes(category_params)

    if @category.save
      redirect_to categories_path
    else
      render :new
    end
  end

  def edit; end

  def update
    @category.assign_attributes(category_params)

    if @category.save
      redirect_to categories_path
    else
      render :edit
    end
  end

  def destroy
    authorize @category

    @category.destroy

    redirect_to categories_path
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end

  def set_category
    @category ||= params[:id] ? Category.find(params[:id]) : Category.new
  end
end
