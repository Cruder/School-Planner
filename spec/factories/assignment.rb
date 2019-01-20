# frozen_string_literal: true

FactoryBot.define do
  factory :assignment do
    title { 'Title' }
    description { 'Description' }
    association :discipline, factory: :discipline
  end
end
