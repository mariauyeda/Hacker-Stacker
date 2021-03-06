require 'faker'

# ***************************
#       DO THESE FIRST
# ***************************

# User.delete_all
# Answer.delete_all
# Question.delete_all
# Vote.delete_all
# Comment.delete_all

# 30.times do
#   User.create(
#     first_name:Faker::Name.first_name,
#     last_name:Faker::Name.last_name,
#     username:Faker::Internet.user_name,
#     email:Faker::Internet.email,
#     password_hash:'password'
#   )
# end


# 20.times do
#   Question.create(
#     title:Faker::Lorem.sentence,
#     text:Faker::Lorem.paragraph(2),
#     user_id:rand(1..20)
#     )
# end

# 20.times do
#   Answer.create(
#     text:Faker::Hacker.say_something_smart,
#     user_id:rand(1..20),
#     question_id:rand(1..20)
#   )
# end

# ***************************
#      DO THESE SECOND
# ***************************

20.times do
  Vote.create(
    value:[-1,0,1].sample,
    user_id:rand(1..20),
    votable: Question.find(1)
  )
end

20.times do
  Vote.create(
    value:[-1,0,1].sample,
    user_id:rand(1..20),
    votable: Answer.find(2)
  )
end

20.times do
  Comment.create(
    text:Faker::Hipster.sentence,
    user_id:rand(1..20),
    commentable: Question.find(3)
  )
end

20.times do
  Comment.create(
    text:Faker::Hipster.sentence,
    user_id:rand(1..20),
    commentable: Answer.find(4)
  )
end

