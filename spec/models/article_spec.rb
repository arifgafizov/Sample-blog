require "spec_helper"
require 'rails_helper'

# разбивка модели теста на две логические части "validations" и "associations"
describe Article do

  describe "validations" do
    it { should validate_presence_of :title }
    it { should validate_presence_of :text }
  end

  describe "associations" do
    it { should have_many :comments } # проверка наличия связи one-to-many статьи к коментариям в сущности Article
  end

  describe "#subject" do
    it "returns the article title" do
      # создаем объект article определенным способом
      article = create(:article, title: 'Lorem Ipsum')

      # assert, проверка
      expect(article.subject).to eq 'Lorem Ipsum'
    end
  end
end
