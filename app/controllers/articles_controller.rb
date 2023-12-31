class ArticlesController < ApplicationController
    #before_filter :set_search
    
    def index
      @articles = Article.all
    end

    def new
      @article = Article.new
    end

    

    def create
      
      @article = Article.new(article_params.merge(author: current_user.name).merge(authorid: current_user.id))
      if @article.save
          redirect_to root_path, notice: "POST CREATED"
      else
          #redirect_to public_home2_path, notice: "ERROR 2137"
          flash[:alert] = "Something went wrong"
          render :new
      end
    end

    def edit
      @article = Article.find(params[:id])
    end
  
    def update
      @article = Article.find(params[:id])
  
      if @article.update(article_params.merge(author: current_user.name).merge(authorid: current_user.id))
        redirect_to @article
      else
        render :edit, status: :unprocessable_entity
      end
    end


    def show
      @article = Article.find(params[:id])
    end

    private

      def article_params
        params.inspect
        params.permit(:title, :content, :status, :image)
      end   

end
