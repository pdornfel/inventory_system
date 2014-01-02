# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :item, :class => 'Item' do
    title "Pasta"
    description "The best"
    quantity 5
  end
end
