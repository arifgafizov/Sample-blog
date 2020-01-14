class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
  end

  def create
    @article = Article.new(article_params)
    if @article.valid? # условие если модель валидна
      @article.save
      redirect_to @article # redirect_to получает сущность @article и делает автоматом редирект (перенаправление)
    else
      render action: 'new' # возвращаем результат ключа action 'new' т.е. представление new.html.erb, если не прошла валидация
    end
  end

  def edit
    @article = Article.find(params[:id]) # получаем необходимую сущность
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
        redirect_to @article 
    else
      render action: 'edit'
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :text) # разрешаем получать с клиента title и text
  end


end
