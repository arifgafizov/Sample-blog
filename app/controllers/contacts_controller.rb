class ContactsController < ApplicationController

  def new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.valid? # условие если модель валидна
      @contact.save
    else
      render action: 'new' # возвращаем результат ключа action 'new'
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:email, :message)
  end

end
