class HomeController < ApplicationController

  before_action :set_last

  def index
  end

  def blog
      @publications = Publication.all
  end

  def publication
  	@publication = Publication.find(params[:id])
    @comment = Comment.new
    @comments = Comment.where(publication_id: @publication.id)
  end

  def category
    @publications = Publication.where(category_id: params[:id])
    @gallery = Publication.all.limit(3)
  end

  def search
    @publications = Publication.search(params["search"])
    @gallery = Publication.all.limit(3)
  end

  private
  def set_last
    @last = Publication.includes(:category).last(3).reverse
    if @last.first
        @first_item = @last.first
        @name =  @first_item.category.nil? ? "Sin categoria" : @last.first.category.name
        @categories = Category.all
    end
  end

end
