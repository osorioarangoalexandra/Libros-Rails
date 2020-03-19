class BooksController < ApplicationController
    def index 
        @books = Book.all
        render json: @books
    end

    def new
        
        @book = Book.new
    end

    def create

        @book = current_user.books.new(book_params)
      

        if @book.save
            render json: @book
        else
            render json: @book
        end
    end

    def update
        @book = Book.find(params[:id])
        @book.update_attributes(book_params)
        render json: @book
      end

      def destroy
        @book = Book.find(params[:id])
        @book.destroy
        
      end
      
      private

        def book_params

          params.require(:book).permit(:name, :author, :quality, :language, :genre)
       
        end
end




  

  
