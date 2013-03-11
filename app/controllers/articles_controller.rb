class ArticlesController < ApplicationController
  before_filter :authenticate_user!

  
  def index
  	@articles = Article.order(:updated_at).page params[:page]
  end

  def manage
  	@articles = Article.order(:updated_at).page params[:page]
  end

  def edit
  	@article 	=	Article.find_by_id(params[:id])
  end
end
