class ArticlesController < ApplicationController
    # all
    def index
        @articles = Article.all
    end

    # find by id
    def show
        @article = Article.find(params[:id])
    end
    
    def new    
    end

    # create
    def create
        @article = Article.new(article_params)
    
        @article.save
        redirect_to @article
    end
    
    # private method to accept a POST request (create and update)
    private
        def article_params
        params.require(:article).permit(:title, :text)
        end
end
