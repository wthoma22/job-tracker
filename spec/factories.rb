FactoryGirl.define do

  sequence(:name) { |n| "ESPN #{n}" }
  factory :company do
    name
  end

  factory :job do
    title "Developer"
    description "So fun!"
    level_of_interest 80
    city "Denver"
    company
    category
  end

    sequence(:title) { |n| "Finance #{n}"}
    factory :category do
      title

    factory :category_with_jobs do
      transient do
        jobs_count 3
      end

    after(:create) do |category, evaluator|
      create_list(:job, evaluator.jobs_count, category: category)
      end
    end
  end
end
