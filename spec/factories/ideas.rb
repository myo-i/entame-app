FactoryBot.define do
  factory :idea do
    user_id        {'2'}
    title         {'test'}
    idea_1        {'テストtest123'}
    idea_2        {'テストtest123'}
    idea_3        {'テストtest123'}
    genre_id      {'2'}

    association :user
  end
end
