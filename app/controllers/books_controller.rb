class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def create
    @book = Book.new(params.require(:book).permit(:title, :author, :price, :published_date))
    if @book.save
      redirect_to books_path, notice: "Book created successfully."
    else
      flash.now[:notice] = "Book creation failed, please try again."
      render('new')
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(title: params[:book][:title], author: params[:book][:author], price: params[:book][:price], published_date: params[:book][:published_date])
      redirect_to books_path, notice: "Book updated succesfully."
    else
      flash.now[:notice] = "Book update failed, please try again."
      render('edit')
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    render('delete')
    flash[:notice] = "Book sucessfully deleted."
  end

end
