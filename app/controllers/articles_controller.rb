class ArticlesController < ApplicationController
  before_filter :authenticate_user!

  
  def index
  	@articles  = Article.order(:updated_at).page params[:page]
    @categories = Category.includes(:user)
  end

  def edit
  	@article     = Article.find(params[:id])
    @categories  = Category.includes(:user).where("users.id" => current_user.id)
    @article_category = @article.category
  end

  def show
    @article   = Article.find(params[:id])
  end

  def new
    @article   = Article.new
    @categories = Category.includes(:user).where("users.id" => current_user.id)
  end

  def create
    @article          = Article.new params_article
    @article.user     = current_user
    @article.category = Category.find params[:article][:category]

    if @article.save!
       redirect_to article_url(@article),notice: "Article have been successfully created."
    else
      # raise
    end
  end

  def update
    @article = Article.find(params[:id])
    @article.update_attributes(params_article)
    @article.category = Category.find params[:article][:category]
    if @article.save!
      redirect_to article_url(@article),notice: "Article have been successfully updated."
    else
      # raise
    end
  end

  def destroy
    if Article.find(params[:id]) && Article.destroy(params[:id])
      redirect_to articles_manage_url, notice: "Article have been successfully deleted."
    else
      # raise
    end
  end

  def manage
    @articles       = Article.includes(:category).order(:updated_at).page params[:page]
  end

  private
    def params_article
      params[:article].slice(:title, :content)
    end

end
