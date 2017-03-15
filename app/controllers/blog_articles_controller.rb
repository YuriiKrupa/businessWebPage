class BlogArticlesController < ApplicationController

def index
  @articles = BlogArticle.all
end

def show
  @article = BlogArticle.find(params[:id])
end



end
