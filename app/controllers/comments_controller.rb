class CommentsController < ApplicationController

    def index
      @comments = Comment.all
    end

    def new
      @comment = Comment.new
    end


    def create
      @article = Article.find(params[:article_id])
      @comment = @article.comments.create(comment_params.merge(article_id: @article.id).merge(author: current_user.name))
      redirect_to article_path(@article)
    end


    # def create
      
    #     @comment = Comment.new(comment_params.merge(article_id: 1))
    #     if @comment.save
    #         redirect_to root_path, notice: "COMMENT ADDED SUCCESFULLY"
    #     else
    #         #redirect_to public_home2_path, notice: "ERROR 2137"
    #         flash[:alert] = "Something went wrong"
    #         render :new
    #   end
    # end

    # def show
    #   @comment = Comment.find(params[:id])
    # end

    private

      # def comment_params
      #   params.permit(:author, :content, :article_id)
      # end
    def comment_params
      params.require(:comment).permit( :content)
    end
end
