require "spec_helper"
require 'rails_helper'

feature "Contact Creation" do
  # позволить доступ к странице контактов
  scenario "allows accees to contacts page" do
    # заходим на страницу contacts
    visit '/contacts'

    # assert, проверка на наличие текста 'Contact us' на странице '/contacts'
    expect(page).to have_content I18n.t 'contacts.contact_us'
  end

  # позволить гостю создать контакт
  scenario "allows a guest to create contact" do
    visit '/contacts'
    # гем находит email по его id = contact_email аналогично для message
    # заполняем поля email и message для тестирования
    fill_in :contact_email, :with => 'user@example.com'
    fill_in :contact_message, :with => 'something'
    # кликаем кнопку 'Send message'
    click_button 'Send message'

    expect(page).to have_content 'Thanks!'
  end
end
