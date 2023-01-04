FactoryBot.define do
  factory :task do
    title { "factory task title" }
    description { "factory task desc" }
    due_date { "2022-11-11" }
  end
end
