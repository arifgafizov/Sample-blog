require "spec_helper"
require 'rails_helper'

describe Article do
  it { should have_many :comments } # проверка наличия связи one-to-many статьи к коментариям в сущности Article
end
