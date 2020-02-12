require "spec_helper"
require 'rails_helper'

feature "Contact Creation" do
  scenario "allows acees to contacts page" do
    # заходим на страницу contacts
    visit '/contacts'

    # assert, проверка на наличие текста 'Contact us' на странице '/contacts'
    expect(page).to have_content I18n.t 'contacts.contact_us'
  end
end
