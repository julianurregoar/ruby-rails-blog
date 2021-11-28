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

    # edit
    def edit
        @article = Article.find(params[:id])
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

    def update
        @article = Article.find(params[:id])

        if @article.update(article_params)
            redirect_to @article
        else
            render 'edit'
        end
    end


    def destroy
        @article = Article.find(params[:id])
        @article.destroy
    
        redirect_to articles_path
    end

    # private method to accept a POST request (create and update)
    private

    def article_params
        params.require(:article).permit(:title, :text)
    end
end
