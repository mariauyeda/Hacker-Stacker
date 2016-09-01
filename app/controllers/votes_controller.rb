
# Up-votes a QUESTION
post "/questions/:id/vote-up" do
  question = Question.find(params[:id])
  question.votes.create(value: 1)
  redirect "/questions"
end

post "/questions/:id/vote-down" do
  question = Question.find(params[:id])
  question.votes.create(value: -1)
  redirect "/questions"
end
