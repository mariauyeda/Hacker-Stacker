class User < ActiveRecord::Base

  has_many :questions
  has_many :answers
  has_many :comments, as: :commentable
  has_many :votes, as: :votable

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def authenticate(input_password)
    self.password == input_password
  end

end

