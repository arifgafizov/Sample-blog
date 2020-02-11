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

  describe "#last_comment" do
    it "returns the last comment" do
      # создаём статью с 3 комментариями
      article = create(:article_with_comments)

      # проверка
      expect(article.last_comment.body).to eq "Comment body 3"
    end
  end
end
