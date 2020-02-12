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
    expect(page).to have_content I18n.t 'articles.article_new'
  end

  # позволить пользователю создать статью
  scenario "allows user to create article" do
    visit new_article_path

    fill_in :article_title, :with => 'example article title'
    fill_in :article_text, :with => 'example article text'

    click_button 'Save Article'
  end
end
