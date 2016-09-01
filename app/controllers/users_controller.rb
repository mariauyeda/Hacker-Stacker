get '/users/new' do
  @user = User.new  
  erb :'users/new'
end



get '/users/:id' do
  @user = User.find(params[:id])
  p @user
  # if current_user
    erb :'users/show'
  # else
  #   redirect '/sessions/new'
  # end
end

get '/users/:id/comments' do
  @user = User.find(params[:id])
  p "*"*22
  p @user.id
  @comments = Comment.all
  @comments = @comments.select{ |comment| comment.user_id == @user.id }

  @answers = Answer.all
  @answers = @answers.select{ |answer| answer.user_id == @user.id }
  
  erb :'comments/index'
 
end

post '/users' do
  if params[:password_confirmation] == params[:user][:password_hash]
    @user = User.new(params[:user])
    if @user.save
      session[:id] = @user.id
      redirect "/users/#{@user.id}"
    else
      @errors = @user.errors.full_messages
      redirect '/users/new'
    end
  else
    @errors = ["Password and password confirmation don't match"]
  end
end