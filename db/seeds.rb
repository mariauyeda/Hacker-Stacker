30.times do
  User.create(
    first_name:Faker::Name.first_name,
    last_name:Faker::Name.last_name,
    username:Faker::Internet.user_name,
    email:Faker::Internet.email,
    password_hash:'password'
  )
end

20.times do
  Answer.create(
    text:Faker::Hacker.say_something_smart,
    user_id:[1..20].sample,
    question_id:[1..20].sample,
  )
end

20.times do
  Question.create(
    title:Faker::Lorem.sentence,
    user_id:[1..20].sample,
    question_id:[1..20].sample,
  )
end

20.times do
  Vote.create(
    user_id:[1..20].sample,
    value:[-1,0,1].sample
  )
end

20.comments do
  Comment.create(
    text:Faker::Hacker.say_something_smart,
    user_id:[1..20].sample,
  )
end
