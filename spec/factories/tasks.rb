FactoryGirl.define do
  factory :task do
    title "MyString"
    description "MyText"
    done false
    deadline "2018-12-29 18:41:36"
    user nil
  end
end
