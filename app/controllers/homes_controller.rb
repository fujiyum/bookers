class HomesController < ApplicationController

    def top
    end

    def index
        @books = Book.all
    end

    def new
        @book = Book.new
    end

    def create
        @book = Book.new(@book_params)

        if @book.save
        redirect_to book_path(@book.id)
        else
        render index_path
        end

    end

    private
    def book_params
        params.require(:book).permit(:title, :body)
    end

end
