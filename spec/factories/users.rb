FactoryBot.define do
  factory :user do
    nickname              {'test'}
    email                 {'test@gmail.com'}
    password              {'abc123'}
  end
end