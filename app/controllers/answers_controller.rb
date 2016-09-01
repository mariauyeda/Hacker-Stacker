# ANSWERS INDEX
# get '/answers' do
#   @answers = Answer.all
#   erb :'answers/index'
# end

# ANSWERS NEW
get '/answers/new' do
  @answer = Answer.new
  @question = Question.find()
  erb :'answers/new'
end

# ANSWERS CREATE
post '/answers' do
  @answer = Answer.new(params[:answer])
  if @answer.save
    redirect '/answers'
  else
    @errors = @answer.errors.full_messages
    erb :'answers/new'
  end
end

# ANSWERS SHOW
# get '/answers/:id' do
#   @answer = Answer.find(params[:id])
#   erb :'answers/show'
# end

# ANSWERS EDIT
# get '/answers/:id/edit' do
#   @answer = Answer.find(params[:id])
#   erb :'answers/edit'
# end


# ANSWERS UPDATE
# put '/answers/:id' do
#   @answer = Answer.find(params[:id])
#   @answer.update(params[:answer])
#   redirect "/answers/#{@answer.id}"
# end


# ANSWERS DESTROY
# delete '/answers/:id' do
#   @answer = Answer.find(params[:id])
#   @answer.destroy
#   redirect "/answers"
# end
