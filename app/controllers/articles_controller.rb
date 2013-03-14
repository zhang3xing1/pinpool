class ArticlesController < ApplicationController
  before_filter :authenticate_user!

  
  def index
  	@articles  = Article.order(:updated_at).page params[:page]
    @categories = Category.includes(:user)
  end

  def edit
  	@article   = Article.find_by_id(params[:id])
    @categories = Category.includes(:user).where("users.id" => current_user.id)
  end

  def show
    @article   = Article.find_by_id(params[:id])
  end

  def new
    @article   = Article.new
  end

  def create
    @article          = Article.new params_article
    @article.user     = current_user
    @article.category = 

    @article.save!
    render :text => 'ok'
  end

  def update
    @article = Article.find_by_id(params[:id])
    @article.update_attributes(params_article)
    @article.save!
    redirect_to article_url(@article)
  end


  def manage
    @articles       = Article.includes(:category).order(:updated_at).page params[:page]
  end

  private
    def params_article
      params[:article].slice(:title, :content)
    end
end
