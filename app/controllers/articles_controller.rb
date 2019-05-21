class ArticlesController < ApplicationController
    before_action :set_task, only: [:show, :edit, :update, :destroy]

    def index
        @articles = Article.all
    end

    def show
    end

    def new
        @article = Article.new
    end

    def create
        Article.create(article_params)
        redirect_to articles_path, turbolinks: false
    end

    def edit
    end

    def update
        @article.update(article_params)
        redirect_to article_path, turbolinks: false
    end

    def destroy
        @article.destroy
        redirect_to articles_path, turbolinks: false
    end

    private
    def article_params
        params.require(:article).permit(:title, :content)
    end

    def set_task
        @article = Article.find(params[:id])
    end
end
