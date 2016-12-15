class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
  end

  def create
  	Book.create :title => params[:title],
      :author => params[:author] 
      redirect_to books_path	
  end

  def edit
  	@book = Book.find params[:id]	
  end

  def update
  	@book = Book.find params[:id]
  	@book.title = params[:title]
  	@book.author = params[:author]
    @book.save
    redirect_to books_path
end
   
   def show
     @book = Book.find params[:id]	
   end

   def destroy
     @book = Book.find params[:id]
     @book.delete
     redirect_to books_path 	
   end

end	