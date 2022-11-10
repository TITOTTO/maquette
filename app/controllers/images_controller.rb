class ImagesController < ApplicationController
    def create
      puts params
      @article = Article.find(params[:article_id])
      @article.images.attach(params[:images])
      redirect_to(article_path(@article))
    end
  
    def destroy
      @article = Article.find(params[:article_id])
      @article.images.purge
      redirect_to(article_path(@article))
    end
  
end
