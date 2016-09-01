# get '/questions/:id/votes/new' do
#   @vote = Vote.new
# end

post "/questions/:id/vote-up" do
  question = Question.find(params[:id])
  question.votes.create(value: 1)
  redirect "/questions"
end
