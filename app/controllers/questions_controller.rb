# Display a list of all questions
get '/questions' do
	@questions = Question.all
	erb :'/questions/index'
end
