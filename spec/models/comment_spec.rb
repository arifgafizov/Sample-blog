require "spec_helper"
require 'rails_helper'

describe Comment do
  it { should belong_to :article } # проверка наличия (с помощью матчера) связи one-to-many коментария к статье в сущности Article
end
