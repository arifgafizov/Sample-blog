require 'rails_helper'

feature "Account Creation" do
  # позволить гостю создать акаунт
  scenario "allows guest to create account" do
    sign_up
    # assert, проверка на наличие текста 'Welcome! You have signed up successfully.' при успешной регистрации с помощью I18n
    expect(page).to have_content I18n.t 'devise.registrations.signed_up'
  end
end
