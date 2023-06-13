class CommentsController < ApplicationController

    def index
      @commments = Article.all
    end

    def new
      @comment = Article.new
    end

    def create
      
      @comment = Comment.new(comments_params.merge(author: Current.user.name))
      if @comment.save
          redirect_to public_home2_path, notice: "COMMENT ADDED SUCCESFULLY"
      else
          #redirect_to public_home2_path, notice: "ERROR 2137"
          flash[:alert] = "Something went wrong"
          render :new
      end
    end

    def show
      @comment = Comment.find(params[:id])
    end

    private

      def comment_params
        params.permit(:author, :content)
      end

end
