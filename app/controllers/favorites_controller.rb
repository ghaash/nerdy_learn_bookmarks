class FavoritesController < ApplicationController
  before_action :set_favorite, only: [:show, :edit, :update, :destroy]

  def index
    @favorites = Favorite.all
    @q = Favorite.ransack(params[:q])
    @favorites = @q.result(distinct: true)
    if !params[:bookmark].blank?
      @bookmarks = Bookmark.by_bookmark(params[:bookmark])
    elsif !params[:date].blank?
      if params[:date] == "Today"
        @bookmarks = Bookmark.from_today
      else
        @bookmarks = Bookmark.old_news
      end
    else
    @bookmarks = Bookmark.all
    end
  end

  def show
  end

  def new
    @favorite = Favorite.new
  end

  def edit
  end

  def create
    # binding.pry
    @favorite = Favorite.new(favorite_params)

    respond_to do |format|
      if @favorite.save
        format.html { redirect_to @favorite, notice: 'Favorite was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @favorite.update(favorite_params)
        format.html { redirect_to @favorite, notice: 'Favorite was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @favorite.destroy
    respond_to do |format|
      format.html { redirect_to favorites_url, notice: 'Favorite was successfully destroyed.' }
    end
  end

  private
    def set_favorite
      @favorite = Favorite.find(params[:id])
    end

    def favorite_params
      params.require(:favorite).permit(:user_id, :bookmark_id)
    end
end
