class BooksController < ApplicationController
    def index 

      if params[:user_id]
        @books = Book.by_user_id(params[:user_id])
        render json: @books
      else
        @books = Book.all
        render json: @books
      end

        # @books = Book.all
        # render json: @books
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

    def show
      @book = Book.where(user_id: params[:user_id])  
      render json: @book
      
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

          params.require(:book).permit(:name, :author, :quality, :language, :genre, :isbn)
       
        end
end




  

  
