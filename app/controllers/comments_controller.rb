class CommentsController < ApplicationController
  # использование фильтра для ограничения доступа к созданию комментария с помощью :authenticate_user! встроенного в гем devise
  before_action :authenticate_user!, :only => [:create] 

  def create
    @article = Article.find(params[:article_id]) # получаем необходимую сущность(comment) по айди article
    @article.comments.create(comment_params) # создаем комментарий принимая хеш из comment_params т.е. столбцы author и body из БД

    redirect_to article_path(@article)
  end


  private

  def comment_params
    params.require(:comment).permit(:author, :body) # разрешаем получать author и body
  end
end
