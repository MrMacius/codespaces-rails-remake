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
      else
          redirect_to public_home2_path, notice: "ERROR 2137"
      end
    end

    def show
      @article = Article.find(params[:id])
    end

    def article_params
      params.require(:article).permit(:title, :content)
    end

end
