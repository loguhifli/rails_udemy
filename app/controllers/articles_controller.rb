class ArticlesController < ApplicationController

    def index 
        @articles = Article.all
    end 

    def new 
        @article = Article.new
    end 

    def create
        #render plain: params[:article].inspect
        @article = Article.new(article_params)
        @article.User = User.find( @article.user_id)
        if  @article.save
        flash[:notice] = "Successfully created articles"
        redirect_to article_path(@article)
        else
            render 'new'
        end
        #  redirect_to articles_show(@article)
    end

    def show
        @article = Article.find(params[:id])
    end

    def edit
        @article = Article.find(params[:id])
    end
    
    def update
        @article = Article.find(params[:id])
        if  @article.update(article_params)
        flash[:notice] = "Successfully update articles"
        redirect_to article_path(@article)
        else
        render 'new'
        end
    end

    def destroy
        @article = Article.find(params[:id])
        @article.destroy
        flash[:notice] = "Successfully deleted the article"
        redirect_to articles_path
    end

    private 
        def article_params
        params.require(:article).permit(:title, :description, :user_id)
    end

end