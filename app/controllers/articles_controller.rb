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
        @article = Article.new
    end

    # create
    def create
        @article = Article.new(article_params)
    

        if @article.save
            redirect_to @article
        else
            render 'new'
        end
    end
    
    # private method to accept a POST request (create and update)
    private
        def article_params
        params.require(:article).permit(:title, :text)
        end
end
