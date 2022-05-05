class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(book_params)
    @list = List.find(params[:list_id])
    @movie = Movie.find(params[:movie_id])
    @bookmark.list_id = @list
    @bookmark.movie_id = @movie

    if @bookmark.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  private

  def book_params
    params.require(:bookmark).permit(:comment)
  end
end
