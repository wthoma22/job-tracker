FactoryGirl.define do
  factory :company do
    name "ESPN"
  end

  factory :job do
    title "Developer"
    description "So fun!"
    level_of_interest 80
    city "Denver"
    company
  end

    factory :category do
      title "Finance"
    end
end
