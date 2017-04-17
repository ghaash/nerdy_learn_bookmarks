class BookmarksController < ApplicationController
  before_action :set_bookmark, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
      @bookmarks = Bookmark.all
      @q = Bookmark.ransack(params[:q])
      @bookmarks = @q.result(distinct: true)
      if !params[:sort].blank?
    if params[:sort] == "Ascending"
      @bookmarks = Bookmark.category_sort_up
    elsif params[:sort] == "Descending"
      @bookmarks = Bookmark.category_sort_down
    end
 else
   @bookmarks = Bookmark.all
 end
end


  def show
  end

  def new
    @bookmark = Bookmark.new
  end

  def edit
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)

    respond_to do |format|
      if @bookmark.save
        format.html { redirect_to @bookmark, notice: 'Bookmark was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @bookmark.update(bookmark_params)
        format.html { redirect_to @bookmark, notice: 'Bookmark was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @bookmark.destroy
    respond_to do |format|
      format.html { redirect_to bookmarks_url, notice: 'Bookmark was successfully destroyed.' }
    end
  end

  private
    def set_bookmark
      @bookmark = Bookmark.find(params[:id])
    end

    def bookmark_params
      params.require(:bookmark).permit(:name, :description, :url,
      tags_attributes: [:name])
      # params.require(:bookmark).permit(:name, :description, :url, description_attributes: [:type])
    end
end
