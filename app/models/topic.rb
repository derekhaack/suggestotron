class Topic < ApplicationRecord
  has_many :votes, dependent: :destroy
  validates_presence_of :title, :message => "This field cant be blank"
  validates_presence_of :description, :message => "This field cant be blank"

  def number_of_votes
    sum = 0
    votes.each{|v| sum = sum + v.stars}
    sum
  end
end
