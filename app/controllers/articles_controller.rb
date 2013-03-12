class ArticlesController < ApplicationController
  before_filter :authenticate_user!

  
  def index
  	@articles = Article.order(:updated_at).page params[:page]
  end

  def edit
  	@article 	=	Article.find_by_id(params[:id])
  end

  def new
    @article  = Article.new
  end

  def create
    @article      = Article.new params_article
    @article.user = current_user
    @article.save!
    render :text => 'ok'
  end


  def manage
    @articles = Article.includes(:category).order(:updated_at).page params[:page]
  end

  private
    def params_article
      params[:article].slice(:title, :content)
    end
end
