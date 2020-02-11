# создаем фабрику с моделью article
FactoryBot.define do
  factory :article do
    title { "Article title" }
    text { "Article text" }
  end
end
