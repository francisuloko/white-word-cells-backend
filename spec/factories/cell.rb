FactoryBot.define do
  factory :cell do
    title { 'Word' }
    description { 'Description' }

    association :user
  end
end
