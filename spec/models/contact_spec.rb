require "spec_helper"
require 'rails_helper'

describe Contact do
  it { should validate_presence_of :email } # проверка наличия email в модели Contact
  it { should validate_presence_of :message } # проверка наличия message
end
