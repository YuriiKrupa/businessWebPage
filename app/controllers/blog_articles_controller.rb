class BlogArticlesController < ApplicationController

before_action :set_blog_article, only: [ :show, :edit, :update, :destroy]

def index
  @articles = BlogArticle.all
end

def show

end

def new
  @article = BlogArticle.new
end

def create
  @article = BlogArticle.new(blog_article_params)
    unless @article.save
      render :new
    else
      redirect_to @article
    end
end

def edit
  
end

def update
   if @article.update_attributes(blog_article_params)
      redirect_to @article
    else
      render :edit
    end
end

def destroy
  @article.destroy
  redirect_to blog_articles_path
end

private

  def set_blog_article
    @article = BlogArticle.find(params[:id])  
  end

  def blog_article_params
    params.require(:blog_article).permit(:title, :sub_title, :content, :author, :image)
  end

end