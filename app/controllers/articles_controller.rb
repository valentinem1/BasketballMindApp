class ArticlesController < ApplicationController

    def index
        @articles = Article.all
        # .order("created_at DESC")
    end

    def show
        @article = Article.find(params[:id])
        byebug
    end

    def new
        @article = Article.new
    end

    def create
        @article = Article.create(params.require(:article).permit(:title, :content, :user_id, :tagging_id))
        redirect_to article_path(@article)
    end

    def destroy
        @article = Article.find(params[:id])
        @article.destroy
        redirect_to articles_path
    end

end
