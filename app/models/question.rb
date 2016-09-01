class Question < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :user
  has_many :answers
  has_many :comments, as: :commentable
  has_many :votes, as: :votable

  def points
    votes.sum(:value)
  end
end
