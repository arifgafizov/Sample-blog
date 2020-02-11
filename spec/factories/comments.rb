FactoryBot.define do
  factory :comment do
    author { "Chuck Norris" }
    sequence(:body) { |n| "Comment body #{n}" }
  end
end
# при создании фабрикой коментариев очередному объекту будут устанавливаться свойства :body в "Comment body ..."
