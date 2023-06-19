class CommentsController < ApplicationController

    def index
      @comments = Comment.all
    end

    def new
      @comment = Comment.new
    end

    def create
      
        @comment = Comment.new(comment_params)>merge(article.article_id)
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
        params.permit(:author, :content, :article_id)
      end

end
