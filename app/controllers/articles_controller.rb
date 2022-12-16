class ArticlesController < ApplicationController
    def index
      @articles = Article.all
    end

    def new
      @article = Article.new
    end
    def create
      @article = Article.new(article_params)
      if @article.a > @article.b
        if @article.b > @article.c
          @article.urutan= "ABC" 
        else  
          if @article.c > @article.a
            @article.urutan = "CAB"
          else
            @article.urutan= "ACB"
          end
        end
      else
        if @article.a > @article.c 
          @article.urutan= "BAC"
        else
          if @article.c > @article.b
            @article.urutan ="CBA"
        else
          @article.urutan ="BCA"
        end
      end
    end

      if @article.save 
        redirect_to @article
      else 
        render :new, status: :unprocessable_entity
      end
    end

    def show
      @article = Article.find(params[:id])
    end

    def edit 
      @article = Article.find(params[:id])
    end

    def update 
      @article = Article.find(params[:id])

      if @article.update(article_params)
        redirect_to @article
      else
        render :edit, status:  :unprocessable 
      end
    end

  private
  def article_params
    params.require(:article).permit(:nama, :a, :b, :c,)
  end
end
