# UP-votes a QUESTION
post "/questions/:id/vote-up" do
  question = Question.find(params[:id])
  question.votes.create(value: 1)
  if request.xhr?
    question.points.to_s
  else
    redirect "/questions"
  end
end

# DOWN-votes a QUESTION
post "/questions/:id/vote-down" do
  question = Question.find(params[:id])
  question.votes.create(value: -1)
  if request.xhr?
    question.points.to_s
  else
    redirect "/questions"
  end
end
