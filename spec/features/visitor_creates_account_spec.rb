require "spec_helper"
require 'rails_helper'

feature "Account Creation" do
  # позволить гостю создать акаунт
  scenario "allows guest to create account" do
    # заходим на страницу создания акаунта используя хелпер
    visit new_user_registration_path

    fill_in :user_email, :with => 'user@example.com'
    fill_in :user_username, :with => 'mike'
    fill_in :user_password, :with => 'secure123'
    fill_in :user_password_confirmation, :with => 'secure123'
    click_button 'Sign up'

    # assert, проверка на наличие текста 'Welcome! You have signed up successfully.' при успешной регистрации с помощью I18n
    expect(page).to have_content I18n.t 'devise.registrations.signed_up'
  end
end
