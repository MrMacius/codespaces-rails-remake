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
          redirect_to public_home2_path, notice: "POST CREATED"
      else
          #redirect_to public_home2_path, notice: "ERROR 2137"
          flash[:alert] = "Something went wrong"
          render :new
      end
    end

    def show
      @article = Article.find(params[:id])
    end

    private

      def article_params
        params.permit(:title, :content)
      end

end
