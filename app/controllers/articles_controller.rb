class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
        redirect_to @article, notice: "POST CREATED"
  end

  def show
    @article = article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :content)
  end
end
