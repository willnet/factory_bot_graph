FactoryBot.define do
  factory :account

  factory :author, parent: :account

  factory :post do
    association :writer, factory: :author
    account

    trait :with_comments do
      after(:create) { create_list(:comment, 2) }
    end
  end

  factory :comment do
    association :post
  end
end
