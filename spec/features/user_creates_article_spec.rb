require 'rails_helper'

feature "Article Creation" do
  before(:each) do
    sign_up
  end
  # позволить пользователю зайти на страницу новой статьи
  scenario "allows user to visit new article page" do
    # используем хелпер new_article_path чтоб зайти на страницу новой статьи
    visit new_article_path
    # assert, проверка на наличие текста 'New article'
    expect(page).to have_content 'New article'
  end
end
