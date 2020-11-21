class ArticlesController < ApplicationController
    def new
        @article = Article.new
    end

    def create
        # render plain: params[:article]
        @article = Article.new(article_param)
        @article.save
        redirect_to article_show(@article)
    end

    def show

    end


    private
    def article_params
        params.require(:article).permit(:title, :description)
    end

end