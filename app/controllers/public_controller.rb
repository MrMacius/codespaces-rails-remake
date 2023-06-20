class PublicController < ApplicationController
  def home

    #@articles = Article.all
    @search = Article.ransack(params[:q])
    @articles = @search.result(distirainct: true)
  end
  
end
