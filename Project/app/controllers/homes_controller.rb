class HomesController < ApplicationController

  def index
    @books = Book.all
    @notes = Note.all
  end

  # GET /books/1
  # GET /books/1.json
  def show
  end


end
