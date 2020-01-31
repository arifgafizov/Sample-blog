class ArticlesController < ApplicationController
  # использование фильтра для ограничения доступа к созданию статьи с помощью :authenticate_user! встроенного в гем devise
  before_action :authenticate_user!, :only => [:new, :create] 

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
      redirect_to @article # redirect_to получает сущность @article и делает автоматом редирект (перенаправление, прерывая запрос) на стороне браузера
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
      render action: 'edit' # метод render возвращает данные из action которые он генерирует, не прерывая запрос
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_params
  end

  private

  def article_params
    params.require(:article).permit(:title, :text) # разрешаем получать с клиента title и text
  end


end
