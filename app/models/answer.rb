class Answer < ActiveRecord::Base
  # Remember to create a migration!
  has_many :votes, as: :votable
  has_many :comments, as: :commentable
  belongs_to :user
  belongs_to :question


  def answer_auth
  	user = User.find(self.user_id)
  	user.username
  end
end
