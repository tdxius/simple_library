class BooksController < ApplicationController
  before_action :set_book

  def index
    @books = Book.paginate(page: params[:page])
  end

  def show; end

  def new; end

  def create
    @book.assign_attributes(book_params)

    if @book.save
      redirect_to books_path
    else
      render :new
    end
  end

  def edit; end

  def update
    @book.assign_attributes(book_params)

    if @book.save
      redirect_to books_path
    else
      render :edit
    end
  end

  def destroy
    @book.destroy

    redirect_to books_path
  end

  private

  def book_params
    params.require(:book).permit(:name, :author, :year, :category_id)
  end

  def set_book
    @book ||= params[:id] ? Book.find(params[:id]) : Book.new
  end
end
