class PublicController < ApplicationController
  def home
    @articles = Article.all
  end

  def home2
    @articles = Article.all
  end
  
end
