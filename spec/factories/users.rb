FactoryBot.define do
  factory :user do
    sequence(:name) { |n| "ゲームユーザ#{n}"}
  end
end