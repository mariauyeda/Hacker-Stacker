require 'faker'

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

